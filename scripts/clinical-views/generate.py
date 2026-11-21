#!/usr/bin/env python3
"""Generate clinician-facing views (overview, data table, mind map, form, exchange) of an IG's profiles.

Reads any FHIR IG publisher output folder. Every resource profile gets a view with no configuration;
views.json adds curated views and per-profile wording (see README.md).

Usage: generate.py [--output-dir output] [--config views.json] [-o clinical-views.html] [--only id,id] [--no-auto]
"""
import argparse
from html import escape
import json
import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent

ROOT_TECH = {'meta', 'implicitRules', 'language', 'text', 'contained'}
ANY_TECH = {'id', 'extension', 'modifierExtension'}
LEAF_TYPES = {
    'Identifier', 'CodeableConcept', 'Coding', 'Quantity', 'SimpleQuantity', 'Duration', 'Age', 'Distance', 'Count',
    'Period', 'Reference', 'CodeableReference', 'Ratio', 'RatioRange', 'Range', 'Annotation', 'ContactPoint', 'Money',
    'Attachment', 'Signature', 'Extension',
}
TYPE_MAP = {
    'string': 'text', 'markdown': 'text', 'Annotation': 'text', 'uri': 'text', 'url': 'text', 'canonical': 'text',
    'Attachment': 'text', 'ContactPoint': 'text', 'HumanName': 'text', 'Address': 'text', 'base64Binary': 'text',
    'code': 'coded', 'Coding': 'coded', 'CodeableConcept': 'coded',
    'Identifier': 'id', 'oid': 'id', 'uuid': 'id', 'id': 'id',
    'Quantity': 'quantity', 'SimpleQuantity': 'quantity', 'Duration': 'quantity', 'Age': 'quantity',
    'Distance': 'quantity', 'Count': 'quantity', 'Money': 'quantity', 'Range': 'quantity',
    'integer': 'count', 'positiveInt': 'count', 'unsignedInt': 'count', 'integer64': 'count', 'decimal': 'count',
    'Ratio': 'ratio', 'RatioRange': 'ratio',
    'date': 'date', 'dateTime': 'datetime', 'instant': 'datetime', 'time': 'time', 'Period': 'period',
    'boolean': 'bool', 'Reference': 'link',
}
CONFORMANCE = {
    'StructureDefinition', 'ValueSet', 'CodeSystem', 'ConceptMap', 'NamingSystem', 'ImplementationGuide',
    'CapabilityStatement', 'SearchParameter', 'OperationDefinition', 'StructureMap', 'package', 'expansions', 'qa',
}
PRIMITIVES = {'instant', 'markdown', 'canonical', 'uri', 'url', 'string', 'code', 'id', 'oid', 'uuid', 'base64Binary'}
DESCRIBE_KEYS = ('code', 'vaccineCode', 'type', 'class', 'category', 'practitioner', 'organization', 'subject')
CONTACT_SYSTEMS = {'phone', 'fax', 'email', 'pager', 'url', 'sms', 'other'}
MAX_VALUES = 12
MAX_OPTIONS = 60


def load(path):
    return json.loads(Path(path).read_text(encoding='utf-8-sig'))


def plain(md):
    """Markdown from the IG as readable plain text: link text kept, emphasis and code marks dropped."""
    if not isinstance(md, str):
        return md
    md = re.sub(r'!\[[^\]]*\]\([^)]*\)', '', md)
    md = re.sub(r'\[([^\]]+)\]\([^)]*\)', r'\1', md)
    md = re.sub(r'(\*\*|__)(.+?)\1', r'\2', md)
    md = re.sub(r'`([^`]+)`', r'\1', md)
    return re.sub(r'(?m)^#+\s+', '', md)


def humanize(name):
    name = name.replace('[x]', '')
    words = re.sub(r'(?<=[a-z0-9])(?=[A-Z])', ' ', name).replace('-', ' ').split()
    return ' '.join(words).capitalize() if words else name


def parent_id(eid):
    head, _, last = eid.rpartition('.')
    if ':' in last:
        return head + '.' + last.split(':')[0] if head else last.split(':')[0]
    return head


def is_slice(eid):
    return ':' in eid.rpartition('.')[2]


def is_tech(e):
    last = e['path'].split('.')[-1]
    return not is_slice(e['id']) and (last in ANY_TECH or (last in ROOT_TECH and e['path'].count('.') == 1))


def combine(inner, outer):
    lo, hi = inner.split('..')
    olo, ohi = outer.split('..')
    return f"{0 if olo == '0' else lo}..{'*' if ohi != '1' else hi}"


def contains(actual, pattern):
    if isinstance(actual, list):
        return any(contains(a, pattern) for a in actual)
    if isinstance(pattern, dict):
        return isinstance(actual, dict) and all(k in actual and (
            all(contains(actual[k], x) for x in pv) if isinstance(pv, list) else contains(actual[k], pv))
            for k, pv in pattern.items())
    return actual == pattern


def fixed_value(e):
    return next((v for k, v in (e or {}).items() if k.startswith(('fixed', 'pattern'))), None)


class Build:
    def __init__(self, out_dir, prefix='', package_dirs=None):
        self.out = Path(out_dir)
        self.package_dirs = [Path(d).expanduser() for d in package_dirs or ['~/.fhir/packages']]
        self.prefix = prefix
        self.sds, self.by_url, self.cache, self._pkg, self._examples = {}, {}, {}, None, None
        self.ig = next((load(f) for f in sorted(self.out.glob('ImplementationGuide-*.json'))), {})
        for f in self.out.glob('StructureDefinition-*.json'):
            sd = load(f)
            if sd.get('resourceType') != 'StructureDefinition':
                continue
            if any('id' not in e for e in sd.get('snapshot', {}).get('element', [])):
                print(f"warning: skipped {f.name}: its elements have no ids (FHIR DSTU2 or older)", file=sys.stderr)
                continue
            self.sds[sd['id']] = sd
            self.by_url[sd['url']] = sd
        self.local_vs = {}
        for f in self.out.glob('ValueSet-*.json'):
            vs = load(f)
            self.local_vs[vs.get('url')] = vs['id']
        self._local_cs = None
        self.expansions, self.known = {}, {}
        exp = self.out / 'expansions.json'
        if exp.exists():
            for entry in load(exp).get('entry', []):
                vs = entry['resource']
                lang = next((p.get('valueCode') or p.get('valueString') for p in vs.get('expansion', {}).get('parameter', [])
                             if p['name'] == 'displayLanguage'), None)
                for c in flatten_contains(vs.get('expansion', {}).get('contains', [])):
                    if c.get('display') and (lang in (None, 'en') or (c.get('system'), c.get('code')) not in self.known):
                        self.known[(c.get('system'), c.get('code'))] = c['display']
                if vs['url'] not in self.expansions or lang in (None, 'en'):
                    if vs['url'] not in self.expansions or lang == 'en':
                        self.expansions[vs['url']] = vs
        else:
            print(f'warning: {exp} missing, coded values will show the value set name only', file=sys.stderr)

    def sd(self, pid):
        if pid not in self.sds:
            sys.exit(f'error: StructureDefinition-{pid}.json not found in {self.out}')
        return self.sds[pid]

    def instance(self, ref):
        f = self.out / f'{ref.replace("/", "-")}.json'
        if not f.exists():
            print(f'warning: example {ref} not found', file=sys.stderr)
            return None
        return load(f)

    def title_for(self, url):
        url = url.split('|')[0]
        sd = self.by_url.get(url)
        if sd:
            return self.short(sd.get('title') or sd['name'])
        return url.rstrip('/').split('/')[-1]

    def short(self, title):
        return title[len(self.prefix):] if self.prefix and title.startswith(self.prefix) else title

    def example_for(self, url):
        """The largest example instance that claims the profile in meta.profile, as the one most likely to fill every field."""
        if self._examples is None:
            self._examples = {}
            for f in sorted(self.out.glob('*-*.json')):
                if f.name.split('-')[0] in CONFORMANCE:
                    continue
                try:
                    r = load(f)
                except (ValueError, UnicodeDecodeError):
                    continue
                if not isinstance(r, dict) or 'id' not in r:
                    continue
                size = f.stat().st_size
                for prof in r.get('meta', {}).get('profile', []):
                    prof = prof.split('|')[0]
                    if size > self._examples.get(prof, (0, None))[0]:
                        self._examples[prof] = (size, f"{r['resourceType']}/{r['id']}")
        return self._examples.get(url, (0, None))[1]

    def describe(self, ref):
        if ref in self.cache:
            return self.cache[ref]
        f = self.out / f'{ref.replace("/", "-")}.json'
        text = ref
        if '/' in ref and f.exists():
            r = load(f)
            name = r.get('name')
            if isinstance(name, str):
                text = name
            elif isinstance(name, list) and name:
                text = fmt(name[0])
            elif r.get('identifier'):
                text = f"{r['resourceType']} {r['identifier'][0].get('value', '')}".strip()
            else:
                what = next(filter(None, (fmt(r.get(k)) for k in DESCRIBE_KEYS if isinstance(r.get(k), (dict, list)))), '')
                if what:
                    text = f"{r['resourceType']}: {what}"
        self.cache[ref] = text
        return text

    def packages(self):
        if self._pkg is None:
            self._pkg = {}
            fv = (self.ig.get('fhirVersion') or ['5.0.0'])[0]
            core = {'4.0': 'r4', '4.3': 'r4b', '5.0': 'r5', '6.0': 'r6'}.get(fv[:3], 'r5')
            deps = [f'hl7.fhir.{core}.core#{fv}']
            deps += [f"{d['packageId']}#{d['version']}" for d in self.ig.get('dependsOn', []) if 'packageId' in d]
            for dep in deps:
                pkg = next((d / dep / 'package' for d in self.package_dirs if (d / dep / 'package').is_dir()), None)
                if not pkg:
                    print(f"warning: package {dep} not found in {', '.join(map(str, self.package_dirs))}; "
                          'its value sets show by name only (add --packages)', file=sys.stderr)
                    continue
                idx = pkg / '.index.json'
                if idx.exists():
                    files = [(e.get('resourceType'), e.get('url'), e.get('filename')) for e in load(idx).get('files', [])]
                else:
                    files = []
                    for f in pkg.glob('*.json'):
                        try:
                            r = load(f)
                        except ValueError:
                            continue
                        files.append((r.get('resourceType'), r.get('url'), f.name))
                for rtype, url, name in files:
                    if rtype in ('ValueSet', 'CodeSystem') and url:
                        self._pkg.setdefault(url, pkg / name)
        return self._pkg

    def display(self, system, code):
        """Display of a code from a local or package code system, if one is available."""
        key = ('cs', system)
        if key not in self.cache:
            self.cache[key] = {}
            if self._local_cs is None:
                self._local_cs = {}
                for f in self.out.glob('CodeSystem-*.json'):
                    cs = load(f)
                    self._local_cs[cs.get('url')] = f
            f = self._local_cs.get(system) or self.packages().get(system)
            if f:
                cs = load(Path(f))
                self.cache[key] = {c['code']: c.get('display') for c in flatten_concepts(cs.get('concept', [])) if 'code' in c}
        return self.cache[key].get(code) or self.known.get((system, code))

    def vs_systems(self, url):
        """Code systems a value set draws from, for codes its (possibly truncated) expansion lacks."""
        f = self.out / f"ValueSet-{self.local_vs[url]}.json" if url in self.local_vs else self.packages().get(url)
        if not f or not Path(f).exists():
            return []
        return [i['system'] for i in load(Path(f)).get('compose', {}).get('include', []) if 'system' in i]

    def package_expansion(self, url):
        """Expand an HL7 value set that the publisher did not, when it only lists whole code systems or codes."""
        f = self.packages().get(url)
        if not f:
            return None
        vs = load(f)
        contains = []
        for inc in vs.get('compose', {}).get('include', []):
            if inc.get('filter') or inc.get('valueSet') or 'system' not in inc:
                return {'title': vs.get('title'), 'name': vs.get('name')}
            cs_file = self.packages().get(inc['system'])
            cs = load(cs_file) if cs_file else {}
            concepts = {c['code']: c for c in flatten_concepts(cs.get('concept', []))}
            for c in inc.get('concept') or concepts.values():
                full = concepts.get(c['code'], c)
                abstract = any(pr.get('code') in ('notSelectable', 'abstract') and pr.get('valueBoolean') for pr in full.get('property', []))
                contains.append({'code': c['code'], 'system': inc['system'], 'abstract': abstract,
                                 'display': c.get('display') or full.get('display')})
        return {'title': vs.get('title'), 'name': vs.get('name'), 'expansion': {'total': len(contains), 'contains': contains}}


class Profile:
    """Turns one profile's snapshot into clinician-facing nodes."""

    def __init__(self, build, pid, cfg):
        self.b, self.pid, self.cfg = build, pid, cfg
        sd = build.sd(pid)
        self.sd = sd
        self.els = sd['snapshot']['element']
        self.by_id = {e['id']: e for e in self.els}
        self.diff = {e['id'] for e in sd.get('differential', {}).get('element', [])}
        self.kids = {}
        for e in self.els[1:]:
            self.kids.setdefault(parent_id(e['id']), []).append(e)
        self.labels = cfg.get('labels', {})
        self.descs = cfg.get('descriptions', {})
        self.show = set(cfg.get('show', []))
        self.hide = set(cfg.get('hide', []))
        self.expand = set(cfg.get('expand', []))
        self.flatten = set(cfg.get('flatten', []))
        self.collapsed = set(cfg.get('collapsed', []))
        self.used = set()
        self.no_ms = not any(e.get('mustSupport') for e in self.els)
        ex = cfg.get('example') or build.example_for(sd['url'])
        self.example = build.instance(ex) if ex else None
        self.example_ref = ex if self.example else None

    # ---------- selection ----------
    def children(self, eid):
        """Child elements, with the extension and modifierExtension elements replaced by their slices."""
        for c in self.kids.get(eid, []):
            if is_slice(c['id']):
                continue
            if c['id'] in (eid + '.extension', eid + '.modifierExtension'):
                yield from (x for x in self.kids.get(c['id'], []) if is_slice(x['id']))
            else:
                yield c

    def visible(self, e):
        eid = e['id']
        if e.get('max') == '0':
            return False
        if eid in self.hide:
            return False
        if eid in self.show:
            return True
        if is_tech(e):
            return False
        if e.get('mustSupport'):
            return True
        if self.no_ms and any(d == eid or d.startswith(eid + '.') or d.startswith(eid + ':') for d in self.diff):
            return True
        return e.get('min', 0) >= 1 and parent_id(eid) == self.els[0]['id']

    def effective_card(self, eid, stop=None):
        e = self.by_id[eid]
        card = f"{e['min']}..{e['max']}"
        root, cur = self.els[0]['id'], eid
        while True:
            par = parent_id(cur)
            if not par or par == root or par == stop:
                return card
            if not is_slice(cur) and par in self.by_id:
                pe = self.by_id[par]
                card = combine(card, f"{pe['min']}..{pe['max']}")
            cur = par

    def types(self, e):
        return [t['code'] for t in e.get('type', [])]

    def example_type(self, eid):
        """The datatype a choice element has in the example, e.g. valueString -> string."""
        parent, _, last = eid.rpartition('.')
        stem = last.split(':')[0][:-3]
        if not self.example or not last.split(':')[0].endswith('[x]'):
            return None
        objs = self.resolve([self.example], parent.split('.')[1:], parent.split('.')[0]) if '.' in parent else [self.example]
        for o in objs:
            for k in (o if isinstance(o, dict) else {}):
                if k.startswith(stem) and k[len(stem):][:1].isupper():
                    t = k[len(stem):]
                    low = t[0].lower() + t[1:]
                    return low if low in TYPE_MAP or low in PRIMITIVES else t
        return None

    # ---------- node building ----------
    def node(self, eid):
        e = self.by_id.get(eid)
        if e is None:
            sys.exit(f'error: {eid} is not an element of {self.pid}')
        self.used.add(eid)
        anc = parent_id(eid)
        while anc:
            self.used.add(anc)
            anc = parent_id(anc)
        slices = [c for c in self.kids.get(eid, []) if is_slice(c['id']) and self.visible(c)]
        if eid.endswith('[x]') and len(slices) == 1:
            n = self.node(slices[0]['id'])
            n['card'] = f"{e['min']}..{e['max']}"
            if eid in self.labels:
                n['label'] = self.labels[eid]
            return n
        types = self.types(e)
        if slices:
            n = self.base(e, 'group')
            n['children'] = [self.node(s['id']) for s in slices]
        elif (types and types[0] in LEAF_TYPES or (types and types[0][0].islower())) and eid not in self.expand:
            n = self.leaf(e)
        else:
            kids = [c for c in self.children(eid) if c.get('max') != '0'
                    and (self.visible(c) or (c['id'] in self.diff and not is_tech(c) and c['id'] not in self.hide))]
            built = []
            for c in kids:
                cn = self.node(c['id'])
                if c['id'] in self.flatten and cn.get('children'):
                    for g in cn['children']:
                        g['card'] = combine(g['card'], cn['card'])
                    built.extend(cn['children'])
                else:
                    built.append(cn)
            if not built:
                return self.leaf(e)
            n = self.base(e, 'group')
            n['children'] = built
        for extra in self.cfg.get('attach', {}).get(eid, []):
            n.setdefault('children', []).append(self.node(extra))
        if eid in self.collapsed:
            n['collapsed'] = True
        return n

    def base(self, e, typ):
        eid = e['id']
        last = eid.rpartition('.')[2]
        label = self.labels.get(eid) or e.get('label') or humanize(last.split(':')[1] if ':' in last else last)
        short = e.get('short', '')
        n = {'label': label, 'type': typ, 'card': f"{e.get('min', 0)}..{e.get('max', '*')}",
             'path': eid, 'desc': self.descs.get(eid) or plain(short)}
        if e.get('mustSupport'):
            n['ms'] = True
        if e.get('definition') and e['definition'] != short:
            n['def'] = plain(e['definition'])
        if typ == 'group':
            ex = self.example_value(eid)
            if ex:
                n['ex'] = ex
        return n

    def leaf(self, e):
        eid = e['id']
        types = self.types(e)
        binding = e.get('binding') or {}
        coding_slices = [c.get('binding') for c in self.kids.get(eid + '.coding', []) if is_slice(c['id']) and c.get('binding')]
        if coding_slices:
            binding = coding_slices[0]
        targets = []
        for t in e.get('type', []):
            targets += t.get('targetProfile', [])
        if types == ['Extension']:
            types, binding, targets = self.extension_info(e)
        code = types[0] if types else 'string'
        if len({TYPE_MAP.get(t, 'text') for t in types}) > 1:
            code = self.example_type(eid) or 'string'
        typ = TYPE_MAP.get(code, 'text')
        if code == 'CodeableReference':
            typ = 'coded' if binding.get('valueSet') else 'link'
        if typ in ('text', 'coded'):
            typ = 'coded' if binding.get('valueSet') else 'text'
        typ = self.cfg.get('types', {}).get(eid, typ)
        n = self.base(e, typ)
        if len(types) > 1:
            n['typeText'] = ' or '.join(types)
        if targets:
            names = []
            for t in targets:
                name = self.b.title_for(t)
                if name not in names:
                    names.append(name)
            n['target'] = ' / '.join(names)
        codes = self.add_binding(n, binding) if binding.get('valueSet') else {}
        systems = self.b.vs_systems(binding['valueSet'].split('|')[0]) if binding.get('valueSet') else []
        ex = self.example_value(eid, codes, systems)
        if ex:
            n['ex'] = ex
        fixed = next(((k, v) for k, v in e.items() if k.startswith(('fixed', 'pattern'))), None)
        if fixed:
            fv = fixed[1]
            codings = fv.get('coding', []) if isinstance(fv, dict) else []
            if isinstance(fv, dict) and 'code' in fv and 'system' in fv:
                codings = [fv]
            for c in codings:
                disp = 'code' in c and (c.get('display') or self.b.display(c.get('system'), c['code']))
                if disp:
                    codes[c['code']] = disp
            shown = fmt(fv, codes)
            if codings and n['type'] == 'coded':
                ex = self.example_value(eid, codes, systems)
                if ex and ',' not in ex and shown == codings[0].get('code'):
                    shown = ex
                n['values'] = ['Fixed: ' + shown]
                n['options'] = [shown]
                n.pop('more', None)
                n['ex'] = ex or shown
            else:
                n.setdefault('values', []).insert(0, 'Fixed: ' + shown)
        if eid in self.cfg.get('values', {}):
            n['values'] = self.cfg['values'][eid] + n.get('values', [])
        return n

    def extension_info(self, e):
        eid = e['id']
        own = [x for x in self.els if x['id'].startswith(eid + '.') and x['id'].endswith('value[x]') and x.get('type')]
        own.sort(key=lambda x: (not x.get('binding'), len(x['id'])))
        if own:
            v = own[0]
            return self.types(v), v.get('binding') or {}, [p for t in v['type'] for p in t.get('targetProfile', [])]
        prof = (e['type'][0].get('profile') or [None])[0]
        ext = self.b.by_url.get((prof or '').split('|')[0])
        if ext:
            vals = [x for x in ext['snapshot']['element'] if x['id'].endswith('value[x]') and x.get('max') != '0' and x.get('type')]
            if vals:
                v = vals[0]
                return self.types(v), v.get('binding') or {}, [p for t in v['type'] for p in t.get('targetProfile', [])]
        return ['string'], {}, []

    def add_binding(self, n, binding):
        url = binding['valueSet'].split('|')[0]
        vs = self.b.expansions.get(url) or self.b.package_expansion(url)
        strength = binding.get('strength', '')
        title = (vs or {}).get('title') or (vs or {}).get('name') or url.rstrip('/').split('/')[-1]
        n['vs'] = {'title': title, 'strength': strength, 'url': url}
        if url in self.b.local_vs:
            n['vs']['page'] = f"ValueSet-{self.b.local_vs[url]}.html"
        contains = flatten_contains((vs or {}).get('expansion', {}).get('contains', []))
        total = (vs or {}).get('expansion', {}).get('total') or len(contains)
        n['vs']['total'] = total
        shown = [c.get('display') or c['code'] for c in contains if not c.get('abstract')]
        vals = n.setdefault('values', [])
        if shown and total <= MAX_VALUES:
            vals.extend(shown)
        else:
            vals.append(f'{title}{f" ({total} codes)" if total else ""}')
        if shown:
            n['options'] = shown[:MAX_OPTIONS]
            if total > len(n['options']):
                n['more'] = total - len(n['options'])
        return {c['code']: c.get('display') or c['code'] for c in contains if 'code' in c}

    # ---------- example values ----------
    def example_value(self, eid, codes=None, systems=()):
        if not self.example:
            return None
        vals = self.resolve([self.example], eid.split('.')[1:], eid.split('.')[0])
        codes = dict(codes or {})
        for v in vals:
            for c in codings_in(v):
                if c['code'] not in codes and not c.get('display'):
                    d = self.b.display(c.get('system'), c['code'])
                    if d:
                        codes[c['code']] = d
            if isinstance(v, str) and v not in codes:
                d = next(filter(None, (self.b.display(sys_, v) for sys_ in systems)), None)
                if d:
                    codes[v] = d
        out = []
        for v in vals:
            if isinstance(v, dict) and isinstance(v.get('reference'), str) and not v.get('display'):
                s = self.b.describe(v['reference'])
            elif isinstance(v, dict) and isinstance(v.get('reference'), dict) and not v['reference'].get('display') and 'reference' in v['reference']:
                s = self.b.describe(v['reference']['reference'])
            else:
                s = re.sub(r'\b[A-Z][A-Za-z]+/[A-Za-z0-9.-]{1,64}\b', lambda m: self.b.describe(m.group(0)), fmt(v, codes))
            if s and s not in out:
                out.append(s)
        return ', '.join(out[:4]) if out else None

    def resolve(self, objs, segs, prefix):
        for seg in segs:
            name, _, slc = seg.partition(':')
            prefix = f'{prefix}.{seg}'
            nxt = []
            for o in objs:
                if not isinstance(o, dict):
                    continue
                if name.endswith('[x]'):
                    stem = name[:-3]
                    keys = [k for k in o if k.startswith(stem) and k[len(stem):][:1].isupper()]
                    if slc:
                        keys = [k for k in keys if k == slc]
                    vals = [o[k] for k in keys]
                else:
                    v = o.get(name)
                    vals = v if isinstance(v, list) else ([v] if v is not None else [])
                if slc and not name.endswith('[x]'):
                    vals = [v for v in vals if self.matches(v, prefix)]
                nxt.extend(vals)
            objs = nxt
        return objs

    def matches(self, v, slice_id):
        e = self.by_id.get(slice_id)
        if e is None or not isinstance(v, dict):
            return False
        if e['path'].endswith('extension'):
            prof = (e.get('type', [{}])[0].get('profile') or [''])[0].split('|')[0]
            return v.get('url') == prof
        disc = (self.by_id.get(parent_id(slice_id)) or {}).get('slicing', {}).get('discriminator', [])
        if not disc:
            return False
        for d in disc:
            if d['type'] not in ('value', 'pattern'):
                return False
            el = e if d['path'] == '$this' else self.by_id.get(f"{slice_id}.{d['path']}")
            want = fixed_value(el)
            if want is None:
                vs = ((el or {}).get('binding') or {}).get('valueSet', '').split('|')[0]
                exp = self.b.expansions.get(vs) or self.b.package_expansion(vs) or {} if vs else {}
                allowed = {(c.get('system'), c.get('code')) for c in flatten_contains(exp.get('expansion', {}).get('contains', []))}
                if not allowed:
                    return False
                got = [v] if d['path'] == '$this' else [v.get(k) for k in d['path'].split('.')[:1]]
                if not any((c.get('system'), c['code']) in allowed for c in codings_in(got)):
                    return False
                continue
            got = [v]
            if d['path'] != '$this':
                for key in d['path'].split('.'):
                    got = [x for g in got if isinstance(g, dict) for x in (g.get(key) if isinstance(g.get(key), list) else [g.get(key)]) if x is not None]
            if not any(contains(g, want) for g in got):
                return False
        return True


def codings_in(v):
    if isinstance(v, list):
        for x in v:
            yield from codings_in(x)
    elif isinstance(v, dict):
        if isinstance(v.get('code'), str) and isinstance(v.get('system'), str):
            yield v
        for k in ('coding', 'concept', 'valueCodeableConcept', 'valueCoding'):
            if k in v:
                yield from codings_in(v[k])


def flatten_concepts(cs):
    out = []
    for c in cs:
        out.append(c)
        out.extend(flatten_concepts(c.get('concept', [])))
    return out


def flatten_contains(cs):
    out = []
    for c in cs:
        out.append(c)
        out.extend(flatten_contains(c.get('contains', [])))
    return out


def fmt(v, codes=None):
    codes = codes or {}
    if v is None:
        return ''
    if isinstance(v, bool):
        return 'true' if v else 'false'
    if isinstance(v, (int, float)):
        return str(v)
    if isinstance(v, str):
        if re.match(r'^\d{4}-\d\d-\d\dT\d\d:\d\d', v):
            return v[:10] + ' ' + v[11:16]
        if re.match(r'^\d\d:\d\d:\d\d$', v):
            return v[:5]
        return codes.get(v, v)
    if isinstance(v, list):
        return ', '.join(filter(None, (fmt(x, codes) for x in v)))
    if 'url' in v and ('extension' in v or any(k.startswith('value') for k in v)):
        val = next((v[k] for k in v if k.startswith('value')), None)
        if val is not None:
            return fmt(val, codes)
        return ', '.join(filter(None, (fmt(x, codes) for x in v.get('extension', []))))
    if 'concept' in v or 'reference' in v and isinstance(v.get('reference'), dict):
        return fmt(v.get('concept'), codes) or fmt(v.get('reference'), codes)
    if 'coding' in v or ('text' in v and len(v) <= 2 and 'div' not in v):
        if v.get('text'):
            return v['text']
        c = next((c for c in v.get('coding', []) if c.get('code') in codes), (v.get('coding') or [{}])[0])
        return codes.get(c.get('code')) or c.get('display') or c.get('code', '')
    if 'code' in v and 'system' in v and 'value' not in v:
        return codes.get(v['code']) or v.get('display') or v['code']
    if isinstance(v.get('system'), str) and v['system'] in CONTACT_SYSTEMS and 'code' not in v:
        return v.get('value') or ' '.join(filter(None, [v.get('use'), v['system']]))
    if isinstance(v.get('code'), dict) and 'value' in v:
        return f"{fmt(v['code'], codes)}: {fmt(v['value'], codes)}".strip(': ')
    if 'value' in v and ('unit' in v or isinstance(v.get('code'), str)):
        return f"{v['value']} {v.get('unit') or v.get('code', '')}".strip()
    if 'numerator' in v:
        return f"{fmt(v['numerator'])} / {fmt(v.get('denominator'))}"
    if 'start' in v or 'end' in v:
        return f"{v.get('start', '')} to {v.get('end', '')}".strip(' to') if v.get('end') else f"since {v['start']}"
    if 'value' in v:
        return fmt(v['value'])
    if 'display' in v or 'reference' in v:
        return v.get('display') or v.get('reference', '')
    if 'family' in v or 'given' in v:
        return v.get('text') or ' '.join([v.get('family', '')] + v.get('given', []))
    if 'line' in v or 'city' in v:
        return v.get('text') or ', '.join(v.get('line', []) + [v.get('city', '')])
    return ''


def walk(n, fn):
    fn(n)
    for c in n.get('children', []):
        walk(c, fn)


def build_view(b, view, shared=None):
    profiles = {}

    def prof(pid):
        if pid not in profiles:
            cfg = dict((shared or {}).get(pid, {}))
            cfg.update(view.get('profiles', {}).get(pid, {}))
            profiles[pid] = Profile(b, pid, cfg)
        return profiles[pid]

    main = prof(view['profile'])
    sections = []
    if not view.get('sections'):
        root = main.els[0]['id']
        sections = [main.node(e['id']) for e in main.children(root) if main.visible(e)]
    for s in view.get('sections', []):
        p = prof(s.get('from', view['profile']))
        nodes = []
        for i in s.get('include', []):
            n = p.node(i)
            n['card'] = p.effective_card(i, stop=s.get('element') if not s.get('from') else None)
            if s.get('hoist') and n['type'] == 'group' and n.get('children'):
                nodes.extend(n['children'])
            else:
                nodes.append(n)
        anchor = s.get('element') or (s['include'][0] if s.get('hoist') and len(s.get('include', [])) == 1 else None)
        if anchor:
            ap = main if s.get('element') else p
            e = ap.by_id[anchor]
            ap.used.add(anchor)
            sec = {'label': s['label'], 'type': 'link' if s.get('link') else 'group', 'card': f"{e['min']}..{e['max']}",
                   'path': anchor, 'desc': s.get('desc') or ap.descs.get(anchor) or plain(e.get('short', ''))}
            if e.get('mustSupport'):
                sec['ms'] = True
            if s.get('link'):
                sec['target'] = b.title_for(p.sd['url'])
        else:
            sec = {'label': s['label'], 'type': 'group', 'card': s.get('card'), 'desc': s.get('desc', '')}
        if nodes:
            sec['children'] = nodes
        if s.get('collapsed'):
            sec['collapsed'] = True
        for sg in s.get('subgroups', []):
            pool = sec['children']
            moved = [c for c in pool if c.get('path') in sg['ids']]
            missing = [i for i in sg['ids'] if i not in {c.get('path') for c in moved}]
            moved += [p.node(i) for i in missing]
            first = next((k for k, c in enumerate(pool) if c in moved), len(pool))
            sec['children'] = [c for c in pool if c not in moved]
            group = {'label': sg['label'], 'type': 'group', 'card': None, 'desc': sg.get('desc', ''), 'children': moved}
            if sg.get('collapsed'):
                group['collapsed'] = True
            sec['children'].insert(min(first, len(sec['children'])), group)
        sections.append(sec)

    # anything Must Support or mandatory at the top level that no section placed
    leftovers = []
    for pid in ([view['profile']] if view.get('sections') else []) + view.get('coverage', []):
        p = prof(pid)
        root = p.els[0]['id']
        for e in p.children(root):
            if p.visible(e) and e['id'] not in p.used:
                leftovers.append(p.node(e['id']))
                print(f"warning: {view['id']}: {e['id']} is not placed in any section; added to 'Other'", file=sys.stderr)
    if leftovers:
        sections.append({'label': 'Other', 'type': 'group', 'card': None,
                         'desc': 'Elements not yet placed in a section in views.json.', 'children': leftovers})

    sd = main.sd
    model = {k: view[k] for k in ('id', 'title', 'sub', 'icon', 'kind', 'concept', 'purpose', 'use', 'misuse', 'keywords', 'featured') if k in view}
    model.update({
        'description': view.get('description') or plain(sd.get('description', '')),
        'purpose': view.get('purpose') or plain(sd.get('purpose', '')),
        'resource': view.get('resource') or sd.get('type') or main.els[0]['path'],
        'profile': sd['url'],
        'version': sd.get('version', ''),
        'status': sd.get('status', ''),
        'experimental': sd.get('experimental', False),
        'publisher': sd.get('publisher', ''),
        'igPage': view.get('igPage') or f"StructureDefinition-{sd['id']}.html",
        'example': main.example_ref,
        'root': {'label': view.get('rootLabel', view['title']), 'type': 'group', 'card': '1..1', 'children': sections},
    })
    if view.get('steps'):
        model['steps'] = view['steps']
    if view['kind'] == 'template':
        model['uses'] = [[b.short(profiles[pid].sd.get('title', pid)), f'StructureDefinition-{pid}.html'] for pid in profiles]
    uid = 0

    def assign(n):
        nonlocal uid
        n['uid'] = f"{view['id']}-{uid}"
        uid += 1
    walk(model['root'], assign)
    return model


def auto_view(b, sd):
    typ = sd.get('type') or sd['snapshot']['element'][0]['path'].split('.')[0]
    return {'id': sd['id'], 'title': b.short(sd.get('title') or sd['name']), 'sub': typ, 'kind': 'archetype',
            'icon': ''.join(c for c in typ if c.isupper())[:2] if sum(c.isupper() for c in typ) > 1 else typ[:2],
            'profile': sd['id'], 'concept': b.short(sd.get('title') or sd['name'])}


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument('--output-dir', default='output', help='IG publisher output folder (default: output)')
    ap.add_argument('--config', help='curated views and wording, e.g. scripts/clinical-views/views.json; optional')
    ap.add_argument('-o', '--out', default='temp/clinical-views/clinical-views.html')
    ap.add_argument('--packages', action='append', metavar='DIR',
                    help='FHIR package cache to read dependency value sets from; repeatable (default: ~/.fhir/packages)')
    ap.add_argument('--only', help='comma-separated view or profile ids to include')
    ap.add_argument('--no-auto', action='store_true', help='only the curated views, no view per profile')
    ap.add_argument('--fragment', action='store_true', help='omit the html/head/body skeleton (for hosts that add their own)')
    args = ap.parse_args()

    cfg = load(Path(args.config)) if args.config else {}
    b = Build(args.output_dir, cfg.get('titlePrefix', ''), args.packages)
    views = [dict(v, featured=True) for v in cfg.get('views', [])]
    if not args.no_auto and cfg.get('autoProfiles', True):
        curated = {v['id'] for v in views} | {v['profile'] for v in views if v.get('kind') != 'template'}
        for sd in sorted(b.sds.values(), key=lambda x: (x.get('type', ''), x.get('title') or x.get('name', ''))):
            if (sd.get('derivation') == 'constraint' and sd.get('kind') == 'resource' and not sd.get('abstract')
                    and sd['id'] not in curated and 'snapshot' in sd):
                views.append(auto_view(b, sd))
    if args.only:
        keep = set(args.only.split(','))
        views = [v for v in views if v['id'] in keep or v['profile'] in keep]
    if not views:
        sys.exit(f'error: no resource profiles with snapshots in {args.output_dir}' + (f' match --only {args.only}' if args.only else ''))
    models = [build_view(b, v, cfg.get('profiles')) for v in views]

    manifest = Path(args.output_dir) / 'package.manifest.json'
    pkg = load(manifest) if manifest.exists() else {}
    guide = cfg.get('guideName') or b.ig.get('title') or b.ig.get('name', 'this guide')
    meta = {
        'title': cfg.get('title') or f'{guide} clinical views',
        'intro': cfg.get('intro', ''),
        'guideName': guide,
        'languages': cfg.get('languages', []),
        'igUrl': cfg.get('igUrl', ''),
        'igVersion': pkg.get('version') or b.ig.get('version', ''),
        'built': re.sub(r'^(\d{4})(\d\d)(\d\d).*', r'\1-\2-\3', pkg.get('date', '')),
    }
    html = (HERE / 'template.html').read_text()
    html = html.replace('<title>Clinical views</title>', f"<title>{escape(meta['title'])}</title>")
    data = json.dumps({'models': models, 'meta': meta}, ensure_ascii=False).replace('<', '\\u003c')
    html = html.replace('/*__DATA__*/null', data)
    if not args.fragment:
        head, sep, body = html.partition('</style>')
        html = ('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
                '<meta name="viewport" content="width=device-width, initial-scale=1">\n'
                f'{head}{sep}\n</head>\n<body>{body}</body>\n</html>\n')
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(html)
    featured = ', '.join(f"{m['id']}: {sum(1 for _ in iter_leaves(m['root']))} elements" for m in models if m.get('featured'))
    print(f"wrote {out}: {len(models)} views ({featured or 'none curated'}), {len(html) // 1024} KB")


def iter_leaves(n):
    if n.get('children'):
        for c in n['children']:
            yield from iter_leaves(c)
    else:
        yield n


if __name__ == '__main__':
    main()
