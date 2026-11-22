#!/usr/bin/env python3
"""Generate clinician-facing views (overview, data table, mind map, form, exchange) of an IG's profiles.

Reads any FHIR IG publisher output folder. Every resource profile gets a view with no configuration;
views.json adds curated views and per-profile wording (see README.md).

Usage: generate.py [--output-dir output] [--config views.json] [-o clinical-views.html] [--only id,id] [--no-auto]
"""
import argparse
from html import escape, unescape
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
    'Distance': 'quantity', 'Count': 'quantity', 'Money': 'quantity', 'Range': 'text',
    'integer': 'count', 'positiveInt': 'count', 'unsignedInt': 'count', 'integer64': 'count', 'decimal': 'decimal',
    'Ratio': 'ratio', 'RatioRange': 'ratio',
    'date': 'date', 'dateTime': 'datetime', 'instant': 'datetime', 'time': 'time', 'Period': 'period',
    'boolean': 'bool', 'Reference': 'link',
}
CONFORMANCE = {
    'StructureDefinition', 'ValueSet', 'CodeSystem', 'ConceptMap', 'NamingSystem', 'ImplementationGuide',
    'CapabilityStatement', 'SearchParameter', 'OperationDefinition', 'StructureMap', 'package', 'expansions', 'qa',
}
PRIMITIVES = {'instant', 'markdown', 'canonical', 'uri', 'url', 'string', 'code', 'id', 'oid', 'uuid', 'base64Binary'}
DESCRIBE_KEYS = ('code', 'vaccineCode', 'recommendation.vaccineCode', 'medication', 'suppliedItem.item', 'item.concept', 'itemCodeableConcept', 'relationship', 'type', 'class', 'category', 'productCode', 'ingredient.item',
                 'practitioner', 'organization', 'agent.who', 'subject')
WHAT_KEYS = 13
NO_BUNDLE = {}
CONTACT_SYSTEMS = {'phone', 'fax', 'email', 'pager', 'url', 'sms', 'other'}
ADDRESS_KEYS = {'id', 'extension', 'use', 'type', 'text', 'line', 'city', 'district', 'state', 'postalCode', 'country', 'period'}
KIND_WORDS = {'link': 'reference', 'coded': 'code', 'text': 'text', 'date': 'date', 'datetime': 'date and time', 'quantity': 'amount',
              'count': 'number', 'decimal': 'number', 'bool': 'flag', 'id': 'identifier'}
UNIT_WORDS = {'s': 'second', 'min': 'minute', 'h': 'hour', 'd': 'day', 'wk': 'week', 'mo': 'month', 'a': 'year'}
PART_BINDING = {'Coding': 'code', 'Ratio': 'numerator.code', 'Quantity': 'code', 'SimpleQuantity': 'code', 'Duration': 'code', 'Age': 'code',
                'Distance': 'code', 'Count': 'code', 'Money': 'currency'}
MAX_VALUES = 12
MAX_OPTIONS = 60
SYSTEM_NAMES = {'http://loinc.org': 'LOINC', 'http://snomed.info/sct': 'SNOMED CT', 'http://unitsofmeasure.org': 'UCUM'}
STRICT = ('required', 'extensible', 'preferred', 'example')
CYRILLIC = re.compile('[\u0400-\u04ff]')


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


def first_sentence(text):
    line = (text or '').strip().split('\n')[0]
    m = re.match(r'(.+?[.!?])(\s|$)', line)
    return (m.group(1) if m else line).strip()


PART_ORDER = ('type', 'system', 'code', 'value', 'contentType', 'currency', 'use')
FIXED_PARTS = {'Identifier': ('type', 'use'), 'ContactPoint': ('system', 'use'), 'Attachment': ('contentType',)}
CODE_SYSTEMS = {('Identifier', 'use'): 'http://hl7.org/fhir/identifier-use', ('ContactPoint', 'system'): 'http://hl7.org/fhir/contact-point-system',
                ('ContactPoint', 'use'): 'http://hl7.org/fhir/contact-point-use'}


def humanize(name):
    name = name.replace('[x]', '')
    words = re.sub(r'(?<=[a-z0-9])(?=[A-Z])', ' ', name).replace('-', ' ').split()
    text = ' '.join(words).capitalize() if words else name
    if words:
        text = ' '.join(w if len(w) > 1 and w.isupper() and w.isalpha() else t for w, t in zip(words, text.split(' ')))
    return ' '.join(w.upper() if (len(w) > 2 and w.isalpha() and not re.search('[aeiouyAEIOUY]', w)) or (w == 'id' and i) else w
                    for i, w in enumerate(text.split(' ')))


TYPE_WORDS = {'dateTime': 'date and time', 'boolean': 'yes / no', 'CodeableConcept': 'coded', 'Coding': 'coded',
              'string': 'text', 'Timing': 'schedule', 'integer': 'number', 'decimal': 'number', 'Reference': 'reference'}


def type_slice_label(last, e):
    """'Deceased (date and time)' for a value[x] type slice such as deceased[x]:deceasedDateTime."""
    head, _, name = last.partition(':')
    codes = [t.get('code') for t in e.get('type', [])]
    if head.endswith('[x]') and len(codes) == 1 and name == head[:-3] + codes[0][:1].upper() + codes[0][1:]:
        return f"{humanize(head)} ({TYPE_WORDS.get(codes[0]) or humanize(codes[0]).lower()})"
    return None


def acronyms(label, text):
    """Take the casing of acronyms such as ABO or ICD-10 from the element's short text."""
    key = lambda w: re.sub(r'[^0-9a-z]', '', w.lower())
    found = {key(w): w for w in re.findall(r"[\w-]+", text or '') if sum(ch.isupper() for ch in w) >= 2}
    return ' '.join(found.get(key(w), w) for w in label.split())


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


def is_type_marker(by_id, eid):
    """The cross-version _datatype sub-extension, which only names the datatype the extension stands for."""
    return fixed_value(by_id.get(eid + '.url')) == 'http://hl7.org/fhir/StructureDefinition/_datatype'


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


def ordinal(c):
    """The score a value set or code system gives a concept (R4 ordinalValue, R5 itemWeight)."""
    for x in (c or {}).get('extension', []):
        if isinstance(x, dict) and str(x.get('url', '')).endswith(('ordinalValue', 'itemWeight')) and isinstance(x.get('valueDecimal'), (int, float)):
            return x['valueDecimal']
    for p in (c or {}).get('property', []):
        if isinstance(p, dict) and p.get('code') in ('itemWeight', 'ordinalValue', 'weight') and isinstance(p.get('valueDecimal'), (int, float)):
            return p['valueDecimal']
    return None


def fixed_value(e):
    return next((v for k, v in (e or {}).items() if k.startswith(('fixed', 'pattern'))), None)


def normalize(sd):
    """Bring STU3 shapes (string profile/targetProfile, valueSetReference) to the R4+ form."""
    for e in sd.get('snapshot', {}).get('element', []) + sd.get('differential', {}).get('element', []):
        for t in e.get('type', []):
            for k in ('profile', 'targetProfile'):
                if isinstance(t.get(k), str):
                    t[k] = [t[k]]
        b = e.get('binding')
        if b and 'valueSet' not in b:
            ref = (b.get('valueSetReference') or {}).get('reference') or b.get('valueSetUri')
            if ref:
                b['valueSet'] = ref
    fold_orphan_slices(sd)
    return sd


def fold_orphan_slices(sd):
    """Older snapshots hold a lone slice with no base element (FamilyMemberHistory.relationship:Relationship,
    STU3 Observation.valueQuantity:valueQuantity beside Observation.value[x]:valueQuantity.value): read it as the element."""
    els = [e for e in sd.get('snapshot', {}).get('element', []) if isinstance(e.get('id'), str)]
    by_id = {e['id']: e for e in els}

    def choice(prefix, seg, eid):
        # STU3 names a type slice after its type (valueQuantity:valueQuantity) where others use value[x]:valueQuantity
        name, _, sl = seg.partition(':')
        stems = [name[:i] for i in range(1, len(name)) if name[i].isupper() and name[0].islower()]
        if not sl or not stems:
            return seg
        codes = [t.get('code', '') for t in (by_id.get(eid) or {}).get('type', [])]
        cap = codes[0][:1].upper() + codes[0][1:] if len(codes) == 1 else ''
        typed = name[:-len(cap)] if cap and name.endswith(cap) else ''
        path = (by_id.get(eid) or {}).get('path', '').rpartition('.')[2]
        for stem in reversed(stems):
            x = stem + '[x]'
            if stem == typed and eid.rpartition(':')[0] not in by_id or path == x or any(
                    i == f"{prefix}.{x}" or i.startswith((f"{prefix}.{x}:", f"{prefix}.{x}.")) for i in by_id):
                return f"{x}:{sl}"
        return seg

    def rename(eid):
        segs, out = eid.split('.'), []
        for i, seg in enumerate(segs):
            out.append(choice('.'.join(out), seg, '.'.join(segs[:i + 1])) if ':' in seg else seg)
        return out

    first = [rename(e['id']) for e in els]
    ids = {'.'.join(x) for x in first}
    slices = {}
    for x in first:
        for i, seg in enumerate(x):
            if ':' in seg:
                slices.setdefault('.'.join(x[:i] + [seg.split(':')[0]]), set()).add(seg.split(':')[1])
    orphan = {b for b, names in slices.items() if b not in ids and len(names) == 1}

    def fold(x):
        return [seg.split(':')[0] if ':' in seg and '.'.join(x[:i] + [seg.split(':')[0]]) in orphan else seg
                for i, seg in enumerate(x)]

    for e, x in zip(els, first):
        y = fold(x)
        if ':' not in y[-1]:
            e.pop('sliceName', None)
        e['id'] = '.'.join(y)
    final = {e['id'] for e in els}

    def expand(x):
        # a differential may write a choice type in short form (Observation.valueQuantity for value[x]:valueQuantity)
        out = []
        for seg in x:
            if ':' not in seg and '.'.join(out + [seg]) not in final and seg[:1].islower():
                for stem in [seg[:i] for i in range(len(seg) - 1, 0, -1) if seg[i].isupper()]:
                    alt = next((a for a in (f"{stem}[x]:{seg}", f"{stem}[x]") if '.'.join(out + [a]) in final), None)
                    if alt:
                        seg = alt
                        break
            out.append(seg)
        return out

    for d in sd.get('differential', {}).get('element', []):
        if isinstance(d.get('id'), str):
            d['id'] = '.'.join(expand(fold(rename(d['id']))))


class Build:
    def __init__(self, out_dir, prefix='', package_dirs=None):
        self.out = Path(out_dir)
        self.package_dirs = [Path(d).expanduser() for d in package_dirs or ['~/.fhir/packages']]
        self.prefix = prefix
        self.sds, self.by_url, self.cache, self._pkg, self._examples, self._canon = {}, {}, {}, None, None, None
        self._dep_pkgs, self._dep_examples = [], None
        self.copies = {}  # id of a working copy of an example -> the example, for Bundle lookups
        self._describing = set()
        igs = [load(f) for f in sorted(self.out.glob('ImplementationGuide-*.json'))]
        self.pkg = next((load(f) for f in (self.out / 'package.manifest.json', self.out / 'package.json') if f.exists()), {})
        # a package folder can hold other guides' IGs as examples: take the one the package is
        name = self.pkg.get('name') or ''
        base = re.sub(r'\.r\d+b?$', '', name)
        own = [g for g in igs if g.get('packageId') == name] or [g for g in igs if base and str(g.get('packageId', '')).startswith(base)]
        self.ig = (own or [g for g in igs if not self.pkg or len(igs) == 1 and 'packageId' not in g] or [{}])[0]
        for f in self.out.glob('StructureDefinition-*.json'):
            sd = load(f)
            if sd.get('resourceType') != 'StructureDefinition':
                continue
            normalize(sd)
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
        self.expansions, self.known, self.known_rank, self.seen = {}, {}, {}, {}
        known_rank = self.known_rank
        exp = self.out / 'expansions.json'
        if exp.exists():
            for entry in load(exp).get('entry', []):
                vs = entry['resource']
                lang = next((p.get('valueCode') or p.get('valueString') for p in vs.get('expansion', {}).get('parameter', [])
                             if p['name'] == 'displayLanguage'), None)
                rank = {'en': 0, None: 1}.get(lang, 2)
                for c in flatten_contains(vs.get('expansion', {}).get('contains', [])):
                    key = (c.get('system'), c.get('code'))
                    if c.get('display') and c['display'] != c.get('code') and rank < known_rank.get(key, 3):
                        self.known[key], known_rank[key] = c['display'], rank
                if vs['url'] not in self.expansions or lang in (None, 'en'):
                    if vs['url'] not in self.expansions or lang == 'en':
                        self.expansions[vs['url']] = vs
        else:
            print(f'warning: {exp} missing, coded values will list codes only for value sets that are plain lists from HL7 packages', file=sys.stderr)

    def sd(self, pid):
        if pid not in self.sds:
            sys.exit(f'error: StructureDefinition-{pid}.json not found in {self.out}')
        return self.sds[pid]

    def find_instance(self, ref, within=None):
        """An example instance by Type/id: the entry of the Bundle holding `within`, its own file, or else an entry of any example Bundle;
        a fullUrl (urn:uuid:...) resolves only in the Bundle that holds `within`."""
        if ref.startswith('urn:'):
            return self.bundle_for(within).get(ref)
        self.example_for('')
        ref = re.sub(r'/_history/[^/]+$', '', ref)
        home = self.bundle_for(within) if within is not None else NO_BUNDLE
        hit = home.get(ref) or next((x for u, x in home.items() if u.endswith('/' + ref)), None)
        if hit is not None:
            return hit
        f = self.out / f'{ref.replace("/", "-")}.json'
        if re.fullmatch(r'[A-Za-z]+/[A-Za-z0-9.-]{1,64}', ref) and f.exists():
            return load(f)
        return self._bundled.get(ref) or self.dep_example(ref)

    def dep_example(self, ref):
        """An example instance by Type/id from a dependency package's example folder."""
        if self._dep_examples is None:
            self.packages()
            self._dep_examples = {}
            for pkg in self._dep_pkgs:
                idx = pkg / 'example' / '.index.json'
                for e in (load(idx).get('files', []) if idx.exists() else []):
                    if e.get('resourceType') and e.get('id') and e.get('filename'):
                        self._dep_examples.setdefault(f"{e['resourceType']}/{e['id']}", pkg / 'example' / e['filename'])
        f = self._dep_examples.get(ref)
        return load(f) if f else None

    def bundle_for(self, r):
        """fullUrl -> entry of the example Bundle holding `r`; the one holding this very copy when several hold its Type/id."""
        self.example_for('')
        while id(r) in self.copies:
            r = self.copies[id(r)]
        homes = self._bundle_of.get(f"{r.get('resourceType')}/{r.get('id')}", []) if isinstance(r, dict) else []
        return (next((full for x, full in homes if x is r), None) or next((full for x, full in homes if x == r), None)
                or next((full for _, full in homes), NO_BUNDLE))

    def instance(self, ref):
        r = self.find_instance(ref)
        if r is None:
            print(f'warning: example {ref} not found', file=sys.stderr)
        return r

    def sd_by_url(self, url):
        url = (url or '').split('|')[0]
        if url in self.by_url:
            return self.by_url[url]
        f = self.packages().get(url)
        if f and ('sd', url) not in self.cache:
            sd = load(f)
            self.cache[('sd', url)] = normalize(sd) if sd.get('resourceType') == 'StructureDefinition' else None
        return self.cache.get(('sd', url))

    def system_title(self, url):
        cs = load(self.packages()[url]) if url in self.packages() else {}
        return cs.get('title') or cs.get('name') or SYSTEM_NAMES.get(url, url)

    def title_for(self, url):
        sd = self.sd_by_url(url)
        if sd:
            return self.short(sd.get('title') or sd['name'])
        return url.split('|')[0].rstrip('/').split('/')[-1]

    def short(self, title):
        return title[len(self.prefix):] if self.prefix and title.startswith(self.prefix) else title

    def example_page(self, ref, within=None):
        """The guide page showing an example: its own, or that of the Bundle holding it (the one holding `within` first)."""
        if not ref:
            return None
        self.example_for('')
        name = ref.replace('/', '-')
        own = (self.out / f'{name}.json').exists()
        if within is not None and not (own and f"{within.get('resourceType')}/{within.get('id')}" == ref):
            home = self.bundle_for(within)
            if any(isinstance(x, dict) and f"{x.get('resourceType')}/{x.get('id')}" == ref for x in home.values()):
                return self._full_page.get(id(home))
        return name if own else self._bundle_page.get(ref)

    def example_for(self, url):
        """The largest example instance that claims the profile in meta.profile, as the one most likely to fill every field."""
        if self._examples is None:
            self._examples, self._claims, self._bundled, self._bundle_of, self._bundle_page, self._full_page = {}, {}, {}, {}, {}, {}
            best = {}

            def claim(found):
                for x, size in found:
                    for prof in x.get('meta', {}).get('profile', []):
                        prof = prof.split('|')[0]
                        self._claims.setdefault(prof, []).append((size, f"{x['resourceType']}/{x['id']}"))
                        if size > self._examples.get(prof, (0, None))[0]:
                            self._examples[prof] = (size, f"{x['resourceType']}/{x['id']}")
            for f in sorted(self.out.glob('*-*.json')):
                if f.name.split('-')[0] in CONFORMANCE:
                    continue
                try:
                    r = load(f)
                except (ValueError, UnicodeDecodeError):
                    continue
                if not isinstance(r, dict) or 'id' not in r:
                    continue
                for c in all_codings(r):
                    if c.get('display'):
                        self.seen.setdefault((c['system'], c['code']), c['display'])
                found = [(r, f.stat().st_size)]
                entries = [e for e in r.get('entry', []) if r.get('resourceType') == 'Bundle' and isinstance(e, dict)
                           and isinstance(e.get('resource'), dict) and 'id' in e['resource']]
                full = {e['fullUrl']: e['resource'] for e in entries if isinstance(e.get('fullUrl'), str)}
                for e in entries:
                    x = e['resource']
                    ref = f"{x.get('resourceType')}/{x['id']}"
                    self._bundle_of.setdefault(ref, []).append((x, full))
                    # one copy per Type/id across Bundles: one that claims a profile, then the largest
                    key = (bool(x.get('meta', {}).get('profile')), len(json.dumps(x, indent=2)))
                    if not (self.out / f"{ref.replace('/', '-')}.json").exists() and key > best.get(ref, (False, 0)):
                        self._bundled[ref] = x
                        self._bundle_page[ref] = f.stem
                        best[ref] = key
                    self._full_page[id(full)] = f.stem
                claim(found)
            claim([(self._bundled[ref], size) for ref, (_, size) in best.items()])
        return self._examples.get(url, (0, None))[1]

    def instances_of(self, url):
        """Refs of every instance claiming the profile, largest first."""
        self.example_for(url)
        return [ref for _, ref in sorted(self._claims.get(url, []), key=lambda x: -x[0])]

    def describe(self, ref, within=None):
        """A short human summary of a referenced resource; "#id" refers to a resource contained in `within`."""
        if ref.startswith('#'):
            r = next((c for c in as_list((within or {}).get('contained')) if isinstance(c, dict) and c.get('id') == ref[1:]), None)
            if r is None or id(r) in self._describing:
                return ref
            self._describing.add(id(r))
            try:
                return self.summarize(r, within) or ref
            finally:
                self._describing.discard(id(r))
        key = (ref, id(self.bundle_for(within)))
        if key in self.cache:
            return self.cache[key]
        self.cache[key] = ref
        r = self.find_instance(ref, within) if '/' in ref or ref.startswith('urn:') else None
        text = (self.summarize(r) if r else None) or (f"{r.get('resourceType')}/{r.get('id')}" if r and ref.startswith('urn:') else ref)
        self.cache[key] = text
        return text

    def summarize(self, r, within=None):
        container = within or r
        lang = r.get('language') or (container.get('language') if isinstance(container, dict) else None)
        codes = {c['code']: d for c in all_codings(r) if not own_display(c, lang) for d in [self.display(c.get('system'), c['code'])] if d}
        name = en_text(r, 'name')
        if name is None and isinstance(r.get('deviceName'), list):
            name = next((d['name'] for d in r['deviceName'] if isinstance(d, dict) and isinstance(d.get('name'), str)), None)
        def part(v):
            ref = v.get('reference') if isinstance(v, dict) else None
            ref = ref.get('reference') if isinstance(ref, dict) else ref
            if isinstance(ref, str):
                inner = v['reference'] if isinstance(v.get('reference'), dict) else v
                text = inner.get('display') if isinstance(inner.get('display'), str) else self.describe(ref, container)
                return text.partition(': ')[2] or text
            return fmt(v, codes)
        def first(k):
            v = r
            for seg in k.split('.'):
                v = choice(v, seg) if isinstance(v, dict) else None
                v = v[0] if isinstance(v, list) and v and '.' in k else v
            return v
        what = lambda keys: next(filter(None, (part(first(k)) for k in keys if isinstance(first(k), (dict, list)))), '')
        title = next((c['attachment']['title'] for c in as_list(r.get('content')) if isinstance(c, dict)
                      and isinstance(c.get('attachment'), dict) and c['attachment'].get('title')), None)
        if isinstance(r.get('title'), str):
            return en_text(r, 'title')
        if isinstance(name, str):
            return name
        if isinstance(name, list) and name:
            label = next((name[0][k] for k in ('productName', 'name') if isinstance(name[0], dict) and isinstance(name[0].get(k), str)), None)
            return label or fmt(name[0])
        if title:
            return title
        keys = (('device',) if r.get('resourceType') in ('DeviceUseStatement', 'DeviceUsage', 'DeviceDispense', 'DeviceAssociation') else ()) + DESCRIBE_KEYS[:WHAT_KEYS]
        if what(keys):
            return f"{r.get('resourceType')}: {what(keys)}"
        if r.get('identifier'):
            ident = as_list(r['identifier'])[0]
            return f"{r.get('resourceType')} {ident.get('value', '') if isinstance(ident, dict) else ''}".strip()
        if what(DESCRIBE_KEYS[WHAT_KEYS:]):
            return f"{r.get('resourceType')}: {what(DESCRIBE_KEYS[WHAT_KEYS:])}"
        return None

    def canonical(self, url):
        """The local "Type/id" of a canonical URL, ignoring any |version."""
        if self._canon is None:
            self._canon = {}
            for f in self.out.glob('*-*.json'):
                try:
                    r = load(f)
                except (ValueError, UnicodeDecodeError):
                    continue
                if isinstance(r, dict) and isinstance(r.get('url'), str) and 'id' in r and 'resourceType' in r:
                    self._canon.setdefault(r['url'], f"{r['resourceType']}/{r['id']}")
        return self._canon.get(url.split('|')[0]) if isinstance(url, str) else None

    def packages(self):
        if self._pkg is None:
            self._pkg = {}
            fv = as_list(self.ig.get('fhirVersion') or self.pkg.get('fhirVersions') or self.pkg.get('fhirVersion') or '5.0.0')[0]
            core = {'3.0': 'r3', '4.0': 'r4', '4.3': 'r4b', '5.0': 'r5', '6.0': 'r6'}.get(fv[:3], 'r5')
            for f in list(self.out.glob('ValueSet-*.json')) + list(self.out.glob('CodeSystem-*.json')):
                try:
                    r = load(f)
                except ValueError:
                    continue
                if r.get('url'):
                    self._pkg.setdefault(r['url'], f)
            deps = [f'hl7.fhir.{core}.core#{fv}']
            deps += [f"{d['packageId']}#{d['version']}" for d in self.ig.get('dependsOn', []) if 'packageId' in d]
            for dep in deps:
                pkg = next((d / dep / 'package' for d in self.package_dirs if (d / dep / 'package').is_dir()), None)
                if not pkg and dep == deps[0]:
                    # the exact core release may not be published (STU3 profiles say 3.0.1, the package is 3.0.2)
                    near = sorted((x for d in self.package_dirs for x in d.glob(f'hl7.fhir.{core}.core#{fv[:3]}.*') if (x / 'package').is_dir()),
                                  key=lambda x: [int(n) if n.isdigit() else 0 for n in x.name.split('#')[1].split('.')])
                    pkg = near[-1] / 'package' if near else None
                if not pkg:
                    print(f"warning: package {dep} not found in {', '.join(map(str, self.package_dirs))}; "
                          'its value sets show by name only (add --packages)', file=sys.stderr)
                    continue
                if dep != deps[0]:
                    self._dep_pkgs.append(pkg)
                else:
                    self._core_pkg = pkg
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
                    if rtype in ('ValueSet', 'CodeSystem', 'StructureDefinition') and url:
                        self._pkg.setdefault(url, pkg / name)
        return self._pkg

    def display(self, system, code):
        """Display of a code from a local or package code system, if one is available."""
        key = ('cs', system)
        if key not in self.cache:
            self.cache[key] = {}
            if self._local_cs is None:
                self._local_cs, self._supplements = {}, {}
                for f in sorted(self.out.glob('CodeSystem-*.json')):
                    cs = load(f)
                    if cs.get('content') == 'supplement' and isinstance(cs.get('supplements'), str):
                        if cs.get('language', 'en').startswith('en'):
                            self._supplements.setdefault(cs['supplements'].split('|')[0], []).append(cs)
                    else:
                        self._local_cs[cs.get('url')] = f
            f = self._local_cs.get(system) or self.packages().get(system)
            if f:
                cs = load(Path(f))
                self.cache[key] = {c['code']: en_display(c, cs) for c in flatten_concepts(cs.get('concept', [])) if 'code' in c}
                if cs.get('content') == 'complete':
                    self.cache[('complete', system)] = len(self.cache[key])
                if (cs.get('language') or 'en')[:2] != 'en':
                    self.cache[('en', system)] = {c['code'] for c in flatten_concepts(cs.get('concept', [])) if 'code' in c
                                                  and en_display(c, cs) != c.get('display')}
            elif system == 'urn:ietf:bcp:47' and self.packages().get('http://hl7.org/fhir/ValueSet/languages'):
                vs = load(Path(self.packages()['http://hl7.org/fhir/ValueSet/languages']))
                self.cache[key] = {c['code']: en_display(c, vs) for i in vs.get('compose', {}).get('include', []) for c in i.get('concept', [])}
            for cs in self._supplements.get(system, []):
                for c in flatten_concepts(cs.get('concept', [])):
                    if c.get('code') and c.get('display') and not self.cache[key].get(c['code']):
                        self.cache[key][c['code']] = c['display']
        if self._examples is None:
            self.example_for('')
        if self.known_rank.get((system, code), 3) <= 1 and not self.has_en(system, code):
            return self.known[(system, code)]
        return self.cache[key].get(code) or self.known.get((system, code)) or self.seen.get((system, code))

    def has_en(self, system, code):
        """Whether a non-English code system gives this code an explicit English designation."""
        return code in self.cache.get(('en', system), ())

    def address_vs(self, part):
        if not hasattr(self, '_address_vs'):
            self._address_vs = {}
            for sd in self.sds.values():
                for e in (sd.get('snapshot') or {}).get('element', []):
                    vs = (e.get('binding') or {}).get('valueSet')
                    head, _, k = e.get('path', '').rpartition('.')
                    if vs and head.lower().endswith('address') and k in ('city', 'district', 'state', 'country'):
                        self._address_vs.setdefault(k, vs)
        return self._address_vs.get(part)

    def vs_systems(self, url):
        """Code systems a value set draws from, for codes its (possibly truncated) expansion lacks."""
        f = self.out / f"ValueSet-{self.local_vs[url]}.json" if url in self.local_vs else self.packages().get(url)
        if not f or not Path(f).exists():
            return []
        return [i['system'] for i in load(Path(f)).get('compose', {}).get('include', []) if 'system' in i]

    def filter_codes(self, inc):
        """Codes picked by concept is-a / descendent-of / = filters on a complete package code system; None when that cannot be worked out."""
        cs_file = self.packages().get(inc.get('system'))
        if not cs_file or any(f.get('property') != 'concept' or f.get('op') not in ('is-a', 'descendent-of', 'is-not-a', '=') for f in inc['filter']):
            return None
        cs = load(cs_file)
        if cs.get('content', 'complete') != 'complete':
            return None
        kids = {}
        def nest(concepts, parent):
            for c in concepts:
                if parent:
                    kids.setdefault(parent, []).append(c['code'])
                nest(c.get('concept', []), c['code'])
        nest(cs.get('concept', []), None)
        codes = {c['code'] for c in flatten_concepts(cs.get('concept', []))}
        for c in flatten_concepts(cs.get('concept', [])):
            for pr in c.get('property', []):
                if pr.get('code') in ('subsumedBy', 'parent') and pr.get('valueCode'):
                    kids.setdefault(pr['valueCode'], []).append(c['code'])
        out = None
        for f in inc['filter']:
            top = f.get('value')
            if top not in codes:
                return None
            below, todo = [], list(kids.get(top, []))
            while todo:
                c = todo.pop(0)
                if c not in below:
                    below.append(c)
                    todo += kids.get(c, [])
            picked = ([top] if f['op'] != 'descendent-of' else []) + (below if f['op'] != '=' else [])
            if f['op'] == 'is-not-a':
                picked = [c['code'] for c in flatten_concepts(cs.get('concept', [])) if c['code'] != top and c['code'] not in below]
            out = picked if out is None else [c for c in out if c in picked]
        return out or None

    def core_keys(self):
        """Invariant keys the base specification defines on its resources, datatypes and datatype profiles."""
        if getattr(self, '_core_keys', None) is None:
            self.packages()
            self._core_keys = {'ele-1', 'ext-1'}
            for f in sorted(getattr(self, '_core_pkg', None).glob('StructureDefinition-*.json')) if getattr(self, '_core_pkg', None) else []:
                try:
                    sd = load(f)
                except ValueError:
                    continue
                if sd.get('derivation') != 'constraint' or sd.get('kind') != 'resource':
                    self._core_keys |= {c.get('key') for x in sd.get('snapshot', sd.get('differential', {})).get('element', []) for c in x.get('constraint', [])}
        return self._core_keys

    def package_expansion(self, url):
        """Expand an HL7 value set that the publisher did not, when it only lists whole code systems or codes."""
        f = self.packages().get(url)
        if not f:
            return None
        vs = load(f)
        contains, excluded = [], set()
        for exc in vs.get('compose', {}).get('exclude', []):
            codes = self.filter_codes(exc) if exc.get('filter') and not exc.get('concept') else [c['code'] for c in exc.get('concept', [])]
            if codes is None or exc.get('valueSet') or 'system' not in exc or not codes:
                return {'title': vs.get('title'), 'name': vs.get('name')}
            excluded.update((exc['system'], c) for c in codes)
        for inc in vs.get('compose', {}).get('include', []):
            picked = self.filter_codes(inc) if inc.get('filter') and not inc.get('concept') else None
            if (inc.get('filter') and picked is None) or inc.get('valueSet') or 'system' not in inc:
                return {'title': vs.get('title'), 'name': vs.get('name')}
            cs_file = self.packages().get(inc['system'])
            cs = load(cs_file) if cs_file else {}
            concepts = {c['code']: c for c in flatten_concepts(cs.get('concept', []))}
            for c in inc.get('concept') or ([concepts[x] for x in picked if x in concepts] if picked is not None else concepts.values()):
                full, key = concepts.get(c['code'], c), (inc['system'], c['code'])
                abstract = any(pr.get('code') in ('notSelectable', 'abstract') and pr.get('valueBoolean') for pr in full.get('property', []))
                contains.append({'code': c['code'], 'system': inc['system'], 'abstract': abstract, 'ordinal': ordinal(c) if ordinal(c) is not None else ordinal(full),
                                 'display': (self.known_rank.get(key, 3) <= 1 and self.known[key]) or en_display(c, vs)
                                 or en_display(full, cs) or self.known.get(key)})
        contains = [c for c in contains if (c['system'], c['code']) not in excluded]
        return {'title': vs.get('title'), 'name': vs.get('name'), 'expansion': {'total': len(contains), 'contains': contains}}


class Profile:
    """Turns one profile's snapshot into clinician-facing nodes."""

    def __init__(self, build, pid, cfg, sd=None):
        self.b, self.pid, self.cfg = build, pid, cfg
        sd = sd or build.sd(pid)
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
        for k, v in cfg.get('types', {}).items():
            if v not in TYPE_MAP.values():
                print(f"warning: {pid}: types {k} = {v!r} ignored; use one of {', '.join(sorted(set(TYPE_MAP.values())))}", file=sys.stderr)
        self.flatten = set(cfg.get('flatten', []))
        self.collapsed = set(cfg.get('collapsed', []))
        self.used = set()
        self.ext_stack = ()
        self._visible = {}
        self.no_ms = not any(e.get('mustSupport') for e in self.els)
        self.ms_under = set()
        for e in self.els:
            if not (e.get('mustSupport') or e['id'] in self.show):
                continue
            chain, cur = [], e['id']
            while cur:
                chain.append(cur)
                cur = parent_id(cur)
            if all(self.by_id.get(a, {}).get('max') != '0' for a in chain):
                self.ms_under.update(chain[1:])
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
        if e['id'] not in self._visible:
            self._visible[e['id']] = self._is_visible(e)
        return self._visible[e['id']]

    def _is_visible(self, e):
        eid = e['id']
        if e.get('max') == '0':
            return False
        if eid in self.hide or is_type_marker(self.by_id, eid):
            return False
        if eid in self.show:
            return True
        if (e.get('mustSupport') or eid in self.ms_under) and eid.rpartition('.')[2] not in ('extension', 'modifierExtension'):
            return True
        if is_tech(e):
            return False
        if self.no_ms and any(d == eid or d.startswith(eid + '.') or d.startswith(eid + ':') for d in self.diff):
            return True
        root = self.els[0]['id']
        if e.get('min', 0) < 1:
            return False
        par = self.by_id.get(parent_id(eid))
        if is_slice(eid) and par is not None and par is not self.els[0] and self.visible(par):
            return True
        if not is_slice(eid) and par is not None and par is not self.els[0] and self.types(par) in ([], ['BackboneElement'], ['Element']):
            return self.visible(par)
        # a datatype's mandatory parts show once the datatype itself is drawn as a group
        if (not is_slice(eid) and par is not None and par is not self.els[0] and self.visible(par)
                and (any(c is not e and (c['id'] in self.show or c.get('mustSupport') or c['id'] in self.ms_under
                             or self.no_ms and any(d == c['id'] or d.startswith(c['id'] + '.') for d in self.diff))
                         for c in self.children(par['id']))
                     or any(is_slice(c['id']) and self.visible(c) for c in self.kids.get(par['id'], [])))):
            return True
        return parent_id(eid) in (root, root + '.extension', root + '.modifierExtension')

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
        return list(dict.fromkeys(t['code'] for t in e.get('type', [])))

    def example_type(self, eid):
        """The datatype a choice element has in the example, e.g. valueString -> string."""
        parent, _, last = eid.rpartition('.')
        stem = last.split(':')[0][:-3]
        if self.example and last.split(':')[0] in ('extension', 'modifierExtension'):
            parent, stem = eid, 'value'
        elif not self.example or not last.split(':')[0].endswith('[x]'):
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
        if eid.endswith('[x]') and len(slices) == 1 and len(e.get('type', [])) <= 1:
            n = self.node(slices[0]['id'])
            n['card'] = f"{e['min']}..{e['max']}"
            if eid in self.labels:
                n['label'] = self.labels[eid]
            return n
        if e.get('contentReference') and not slices:
            # a shown element with no shown parts lists all of them; a contentReference's own parts are its slices
            slices = [c for c in self.kids.get(eid, []) if is_slice(c['id']) and c.get('max') != '0' and c['id'] not in self.hide]
        if e.get('contentReference') and not slices and not any(self.visible(c) for c in self.children(eid)):
            n = self.base(e, 'text')
            target = e['contentReference'].split('#')[-1]
            n['typeText'] = f"Same structure as {self.labels.get(target) or humanize(target.rpartition('.')[2])}"
            vals = self.resolve([self.example], eid.split('.')[1:], eid.split('.')[0]) if self.example else []
            ex = [next((en_text(v, k) for k in ('text', 'name', 'title', 'display') if isinstance(v.get(k), str)), None) or fmt(v) if isinstance(v, dict) else fmt(v) for v in vals]
            if any(ex):
                n['ex'] = ', '.join(list(dict.fromkeys(filter(None, ex)))[:4])
            return n
        types = self.types(e)
        sub = self.complex_extension(e) if types == ['Extension'] and not slices else None
        inline = [x for x in self.kids.get(eid + '.extension', []) if is_slice(x['id']) and x.get('max') != '0']
        vx = self.by_id.get(eid + '.value[x]')
        # a required sub-extension rules out a value (ext-1), even when value[x] is left unconstrained
        open_value = (vx is not None and len(vx.get('type', [])) > 10 and not any(x['id'].startswith(eid + '.value[x]:') for x in self.els)
                      and any(x.get('min', 0) >= 1 for x in inline))
        if types == ['Extension'] and not sub and inline and (open_value or self.ext_value(self.els, eid) is None):
            sub = [self.node(x['id']) for x in inline if not is_type_marker(self.by_id, x['id'])]
        cslices = [c for c in self.kids.get(eid + '.coding', []) if is_slice(c['id']) and c.get('max') != '0']
        bound = {(c.get('binding') or self.by_id.get(c['id'] + '.code', {}).get('binding') or {}).get('valueSet') for c in cslices}
        required = [c for c in cslices if c.get('min', 0) >= 1]
        coded = {c['id'] for c in cslices if isinstance((fixed_value(c) or {}).get('code') if isinstance(fixed_value(c), dict) else fixed_value(self.by_id.get(c['id'] + '.code')), str)}
        open_codes = [c for c in required if c['id'] not in coded]
        optional_codes = [c for c in cslices if c['id'] in coded and c.get('mustSupport') and c.get('min', 0) < 1]
        # split when the codings differ in binding, two or more must be given without a fixed code, or a supported fixed code is optional
        if not sub and types[:1] in (['CodeableConcept'], ['CodeableReference']) and len(cslices) > 1 and eid not in self.expand and (
                len(bound) > 1 or len(required) > 1 and open_codes or optional_codes):
            sub = [self.node(c['id']) for c in cslices if self.visible(c) or c.get('min', 0) >= 1 and c['id'] not in self.hide]
        if sub:
            n = self.base(e, 'group')
            n['children'] = sub
        elif slices:
            n = self.base(e, 'group')
            datatype = types and (types[0] in LEAF_TYPES or types[0][0].islower())
            # a sliced datatype keeps its own parts, but not one shown only for a supported extension listed on its own
            kids = []
            for c in self.children(eid):
                if self.visible(c) and not (datatype and (is_slice(c['id']) or self.ext_only_ms(c))):
                    cn = self.node(c['id'])
                    kids.append(cn)
                    if not datatype and not cn.get('children'):
                        kids.extend(self.leaf_extensions(c['id']))
            for s in slices:
                sn = self.node(s['id'])
                kids.append(sn)
                if not sn.get('children'):
                    kids.extend(self.leaf_extensions(s['id']))
            n['children'] = kids + (self.leaf_extensions(eid, inside=True) if datatype else [])
        elif (types and types[0] in LEAF_TYPES or (types and types[0][0].islower())) and eid not in self.expand:
            n = self.leaf(e)
        else:
            kids = [c for c in self.children(eid) if self.visible(c)]
            plain_kids = [c for c in self.children(eid) if c.get('max') != '0' and not is_tech(c) and not is_slice(c['id'])
                          and c['id'] not in self.hide]
            if not kids:
                # an element shown without visible parts: show what it must contain, or else everything it can
                kids = [c for c in plain_kids if c.get('min', 0) >= 1] or plain_kids
            built = []
            for c in kids:
                cn = self.node(c['id'])
                extra = self.leaf_extensions(c['id']) if not cn.get('children') else []
                if c['id'] in self.flatten and cn.get('children'):
                    for g in cn['children']:
                        g['card'] = combine(g['card'], cn['card'])
                    built.extend(cn['children'])
                else:
                    built.append(cn)
                built.extend(extra)
            if not built:
                return self.leaf(e)
            n = self.base(e, 'group')
            n['children'] = built
        fv = fixed_value(e)
        if n.get('children') and n['type'] == 'group' and types[:1] == ['CodeableConcept'] and isinstance(fv, dict):
            cs = [c for c in fv.get('coding', []) if isinstance(c, dict) and isinstance(c.get('code'), str)]
            if cs:
                shown = ', '.join(c.get('display') or self.b.display(c.get('system'), c['code']) or c['code'] for c in cs)
                n['values'] = ['Fixed: ' + shown]
                # the pattern binds every repetition, slices included
                for k in n['children']:
                    if k.get('path', '').startswith(eid + ':') and k.get('type') == 'coded' and not any(v.startswith('Fixed: ') for v in k.get('values', [])):
                        k['values'], k['options'] = ['Fixed: ' + shown], [shown]
                        k.pop('more', None)
        for extra in self.cfg.get('attach', {}).get(eid, []):
            n.setdefault('children', []).append(self.node(extra))
        whole = None
        if n.get('children') and self.example and (types[:1] in (['Timing'], ['Dosage']) or eid.endswith('.repeat')):
            vals = self.resolve([self.example], eid.split('.')[1:], eid.split('.')[0])
            whole = ', '.join(dict.fromkeys(filter(None, (fmt({'repeat': v} if eid.endswith('.repeat') else v) for v in vals[:1]))))
        if whole:
            n['ex'] = whole
        elif n.get('children'):
            reps = self.resolve([self.example], eid.split('.')[1:], eid.split('.')[0]) if self.example and '.' in eid else []
            drop = {id(r) for r in reps[1:] if r is not reps[0]} if not slices else set()

            def prune(o):
                if isinstance(o, dict):
                    return {k: prune(v) for k, v in o.items()}
                return [prune(v) for v in o if id(v) not in drop] if isinstance(o, list) else o
            one = prune(self.example) if drop else None
            if one and len(self.resolve([one], eid.split('.')[1:], eid.split('.')[0])) < len(reps):
                # summarize the first repetition alone, so values of different ones are not combined
                # parts are placed again, so forget they were (leaf extensions skip placed ids)
                full, used, self.example = self.example, self.used, one
                self.used = {u for u in used if not u.startswith((eid + '.', eid + ':'))}
                self.b.copies[id(one)] = full
                one = self.node(eid)
                self.b.copies.pop(id(self.example))
                self.example, self.used = full, used
                # the form fills a repeated group from its first repetition only
                firsts = {}
                walk_leaves(one, lambda c: firsts.setdefault(c.get('path'), form_values(c)))
                walk_leaves(n, lambda c: c.get('path') in firsts and firsts[c['path']] != form_values(c) and c.update(fx=firsts[c['path']]))
                parts = [one['ex']] if one.get('ex') else []
            else:
                parts, seen = [], set()
                kids = [c for c in n['children'] if not c.get('path', '').endswith('extension:translation')]
                # a sliced element: one value per slice
                kids = [c for c in kids if c.get('path', '').startswith(eid + ':') and c.get('ex')] or kids
                for c in kids:
                    first = (c.get('exs') or [c.get('ex')])[0]
                    if first and c.get('type') == 'bool':
                        base = c['path'].rpartition('.')[2].split(':')[0]
                        first = f"{c['label'] if base in ('extension', 'modifierExtension') else humanize(base)}: {first}"
                    if first and not all(x in seen for x in first.split(', ')):
                        parts.append(first)
                        seen.update(first.split(', '))
                listed = {t['code'] for s in slices for t in s.get('type', [])}
                if not parts and slices and not (eid.endswith('[x]') and self.example_type(eid) not in listed):
                    parts = self.example_values(eid)
            if parts:
                n['ex'] = ', '.join(parts[:4])
            else:
                n.pop('ex', None)
        if eid in self.collapsed:
            n['collapsed'] = True
        return n

    def ext_only_ms(self, c):
        """True when a part is shown only for the supported extensions under it, which are listed on their own."""
        if c.get('mustSupport') or c['id'] in self.show or c.get('min', 0) >= 1 or c['id'] not in self.ms_under:
            return False
        under = [d['id'][len(c['id']) + 1:] for d in self.els
                 if d['id'].startswith((c['id'] + '.', c['id'] + ':')) and (d.get('mustSupport') or d['id'] in self.show)]
        return bool(under) and all(any(':' in seg and seg.split(':')[0] in ('extension', 'modifierExtension') for seg in rel.split('.')) for rel in under)

    def leaf_extensions(self, eid, inside=False):
        """Shown extensions inside an element drawn as one field, e.g. gender.extension:gender-other."""
        out = []
        for x in self.els:
            if (x['id'].startswith(eid + '.') and is_slice(x['id']) and x['path'].endswith(('.extension', '.modifierExtension'))
                    and x['id'] not in self.used and self.visible(x)
                    and all(self.by_id.get(a, {}).get('max') != '0' for a in self.ancestors(x['id'], eid))
                    and not any(is_slice(a) and a.rpartition('.')[2].split(':')[0] in ('extension', 'modifierExtension')
                                for a in self.ancestors(x['id'], eid)[1:])):
                n = self.node(x['id'])
                # optional when anything from it up to where it is drawn is: inside eid's group, or beside eid
                if n.get('card') and self.effective_card(x['id'], stop=eid if inside else parent_id(eid)).startswith('0..'):
                    n['card'] = '0..' + n['card'].split('..')[1]
                owner_id = parent_id(parent_id(x['id']))
                # an extension on a datatype's value part, or on another extension's value, belongs to that datatype or extension
                head, _, last = owner_id.rpartition('.')
                last = last.split(':')[0]
                if last == 'value' or last == 'value[x]' and head.rpartition('.')[2].split(':')[0] in ('extension', 'modifierExtension'):
                    owner_id = head
                owner = self.labels.get(owner_id) or humanize(owner_id.rpartition('.')[2].split(':')[-1])
                if x['id'] not in self.labels and owner.lower() == n['label'].lower():
                    kind = KIND_WORDS.get(n['type'], 'detail')
                    n['label'] = f"{owner} {'extension' if owner.lower().split()[-1] == kind else kind}"
                elif x['id'] not in self.labels and owner.lower() not in n['label'].lower():
                    n['label'] = f"{owner} {n['label'][0].lower()}{n['label'][1:]}"
                out.append(n)
        return out

    def ancestors(self, eid, stop):
        chain, cur = [], eid
        while cur and cur != stop:
            chain.append(cur)
            cur = parent_id(cur)
        return chain

    def base(self, e, typ):
        eid = e['id']
        last = eid.rpartition('.')[2]
        short = e.get('short', '')
        label = self.labels.get(eid) or e.get('label') or acronyms(type_slice_label(last, e) or humanize(last.split(':')[1] if ':' in last else last), short)
        n = {'label': label, 'type': typ, 'card': f"{e.get('min', 0)}..{e.get('max', '*')}",
             'path': eid, 'desc': self.descs.get(eid) or plain(first_sentence(e['definition']) if e.get('definition') and (
                 ' | ' in short or (CYRILLIC.search(short) and not CYRILLIC.search(e['definition']))) else short)}
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
        part = PART_BINDING.get(types[0]) if len(types) == 1 else None
        binding = e.get('binding') or {}
        part_b = self.by_id.get(f'{eid}.{part}', {}).get('binding') if part else None
        if part_b and part_b.get('valueSet') and STRICT.index(part_b.get('strength', 'example')) <= STRICT.index(binding.get('strength', 'example')):
            binding = part_b
        coding_slices = [c.get('binding') or self.by_id.get(c['id'] + '.code', {}).get('binding')
                         for c in self.kids.get(eid + '.coding', []) if is_slice(c['id']) and c.get('max') != '0']
        coding_slices = [x for x in coding_slices if x] or [self.by_id.get(eid + '.coding.code', {}).get('binding')]
        if coding_slices[0] and (not binding.get('valueSet') or STRICT.index(coding_slices[0].get('strength', 'example'))
                                 <= STRICT.index(binding.get('strength', 'example'))):
            binding = coding_slices[0]
        targets = []
        for t in e.get('type', []):
            targets += t.get('targetProfile', [])
        if types == ['Extension']:
            types, binding, targets = self.extension_info(e)
        # a resource held inline (Bundle entry, contained, parameter) points at the resource or profile it must be
        held_resource = (len(types) == 1 and types[0] not in TYPE_MAP
                         and (self.b.sd_by_url(f'http://hl7.org/fhir/StructureDefinition/{types[0]}') or {}).get('kind') == 'resource')
        if held_resource:
            targets = [p for t in e.get('type', []) for p in t.get('profile', [])] or (
                [] if types[0] in ('Resource', 'DomainResource') else [f'http://hl7.org/fhir/StructureDefinition/{types[0]}'])
        on_part = None
        if types != ['Extension'] and not binding.get('valueSet') and len(types) == 1 and types[0][0].isupper() and types[0] not in ('Reference', 'CodeableConcept'):
            on_part = self.part_binding(eid, types[0])
        code = types[0] if types else 'string'
        if len(types) > 1:
            code = self.example_type(eid) or (code if len({TYPE_MAP.get(t, 'text') for t in types}) == 1 else None)
        if binding.get('forType') in types and not self.example_type(eid):
            code = binding['forType']
        if binding.get('forType') and code and code != binding['forType']:
            binding = {}
        if ('Quantity' in types and binding.get('valueSet')
                and set(self.b.vs_systems(binding['valueSet'].split('|')[0])) == {'http://unitsofmeasure.org'}):
            # a units value set binds the Quantity choice only
            code = code or 'Quantity'
            if code != 'Quantity':
                binding = {}
        if len(types) > 1 and not binding.get('valueSet'):
            typed = [x for x in self.els if x['id'].startswith(eid + ':') and '.' not in x['id'][len(eid):]
                     and x.get('max') != '0' and (x.get('binding') or {}).get('valueSet') and len(x.get('type', [])) == 1]
            code = code or (typed[0]['type'][0]['code'] if typed else None)
            pick = next((x for x in typed if x['type'][0]['code'] == code), None)
            if pick:
                binding = pick['binding']
        if not code:
            coded = [t for t in types if TYPE_MAP.get(t) == 'coded'] if binding.get('valueSet') else []
            if len(types) > 10 and not coded:
                coded = ['string']
            code = next(iter(coded), None) or next((t for t in types if TYPE_MAP.get(t, 'text') not in ('text', 'coded')), types[0])
        typ = 'link' if held_resource else TYPE_MAP.get(code, 'text')
        if code == 'CodeableReference':
            typ = 'coded' if binding.get('valueSet') else 'link'
        conditional = not binding.get('valueSet') and any(a.get('valueSet') for a in binding.get('additional', []))
        slice_systems = []
        if not binding.get('valueSet') and types[:1] == ['CodeableConcept']:
            for c in self.kids.get(eid + '.coding', []):
                cf = fixed_value(c)
                sy = cf.get('system') if isinstance(cf, dict) else fixed_value(self.by_id.get(c['id'] + '.system'))
                if is_slice(c['id']) and c.get('max') != '0' and isinstance(sy, str) and sy not in slice_systems:
                    slice_systems.append(sy)
        if typ in ('text', 'coded'):
            coded_fixed = bool(slice_systems) or conditional or types == ['Coding'] and isinstance(fixed_value(self.by_id.get(eid + '.system')), str) or isinstance(fixed_value(e), dict) and any('code' in c for c in fixed_value(e).get('coding', [fixed_value(e)]))
            typ = 'coded' if (binding.get('valueSet') or coded_fixed) and (len(types) == 1 or code in ('CodeableConcept', 'Coding', 'code')) else 'text'
        typ = next((t for t in [self.cfg.get('types', {}).get(eid)] if t in TYPE_MAP.values()), typ)
        n = self.base(e, typ)
        if len(types) > 1:
            n['typeText'] = ' or '.join(types)
        elif typ == 'text' and code in ('Range', 'Timing', 'Attachment'):
            n['typeText'] = code
        if targets:
            names = []
            for t in targets:
                name = self.b.title_for(t)
                if name not in names:
                    names.append(name)
            n['target'] = ' / '.join(names)
        elif typ == 'link':
            n['target'] = 'Any resource'
        on = None
        extra_parts = []
        if not binding.get('valueSet') and not conditional and on_part:
            (binding, on), extra_parts = on_part[0], on_part[1:]
        pinned = next((v for k in (('.system',) if types == ['Coding'] else ()) + ('.coding.system', '.concept.coding.system') for v in [fixed_value(self.by_id.get(eid + k))] if isinstance(v, str)), None)
        held = (self.by_id.get(eid.rpartition('.coding:')[0]) or {}).get('binding') or {} if '.coding:' in eid else {}
        if not binding.get('valueSet') and pinned and held.get('valueSet') and pinned in self.b.vs_systems(held['valueSet'].split('|')[0]):
            # a coding slice of the system the whole concept is bound to: that binding applies to it
            binding = held
        codes = self.add_binding(n, binding, on, pinned) if binding.get('valueSet') else {}
        if typ == 'coded' and not binding.get('valueSet') and not conditional and pinned:
            n['values'] = [f"Any code from {self.b.system_title(pinned)}"]
        elif typ == 'coded' and not binding.get('valueSet') and not conditional and slice_systems:
            n['values'] = [f"Any code from {self.b.system_title(sy)}" for sy in slice_systems]
        if conditional:
            # no value set of its own: one per condition, from R5 additional bindings
            also = [self.additional_binding(a) for a in binding['additional'] if a.get('valueSet')]
            n['vs'] = dict(also[0], total='', **({'also': also[1:]} if also[1:] else {}))
            n['values'] = [f"When {a['when']}: {a['title']}" if a.get('when') else a['title'] for a in also]
        for b2, on2 in extra_parts:
            t = {}
            codes = {**self.add_binding(t, b2, on2), **codes}
            n['values'] = n.get('values', []) + t['values']
            n['vs'].setdefault('also', []).append({k: t['vs'][k] for k in ('title', 'strength', 'page', 'on') if k in t['vs']})
        systems = self.b.vs_systems(binding['valueSet'].split('|')[0]) if binding.get('valueSet') else []
        exs = self.example_values(eid, codes, systems)
        if exs:
            n['ex'] = ', '.join(exs)
        if len(exs) > 1:
            n['exs'] = exs
        if exs and '.' in eid.partition('.')[2]:
            fx = self.example_values(eid, codes, systems, first=True)
            if fx != exs:
                n['fx'] = fx
        suggested = self.child_fixed(eid, optional=True) if typ == 'coded' and code == 'CodeableConcept' and binding.get('valueSet') else []
        if suggested and not self.child_fixed(eid):
            for c in suggested:
                c['display'] = c.get('display') or self.b.display(c.get('system'), c['code']) or c['code']
                codes.setdefault(c['code'], c['display'])
            names = list(dict.fromkeys(c['display'] for c in suggested))
            n['values'] = names + [x for x in n.get('values', []) if x not in names]
            n['options'] = names + [x for x in n.get('options', []) if x not in names]
        fixed = next(((k, v) for k, v in e.items() if k.startswith(('fixed', 'pattern'))), None)
        if not fixed and [t.get('code') for t in e.get('type', [])] == ['Extension']:
            for x in [self.by_id.get(eid + '.value[x]')] + [x for x in self.kids.get(eid + '.value[x]', []) if is_slice(x['id'])]:
                fixed = fixed or next(((k, v) for k, v in (x or {}).items() if k.startswith(('fixed', 'pattern'))), None)
        whole = fixed[1] if fixed else None
        if (fixed and isinstance(fixed[1], dict) and not any('code' in c for c in fixed[1].get('coding', [fixed[1]]))
                and not (isinstance(fixed[1].get('text'), str) and not fixed[1].get('coding'))
                and not isinstance(fixed[1].get('value'), (int, float)) and not isinstance(fixed[1].get('unit'), str)):
            fixed = None
        if not fixed and code == 'CodeableReference' and isinstance(fixed_value(self.by_id.get(eid + '.concept')), dict):
            fixed = ('pattern', fixed_value(self.by_id[eid + '.concept']))
        if not fixed and typ == 'coded' and self.child_fixed(eid + ('.concept' if code == 'CodeableReference' else '')):
            fixed = ('pattern', {'coding': self.child_fixed(eid + ('.concept' if code == 'CodeableReference' else ''))})
        if not fixed and types == ['Coding'] and isinstance(fixed_value(self.by_id.get(eid + '.code')), str):
            fixed = ('pattern', {k: v for k in ('system', 'code', 'display') for v in [fixed_value(self.by_id.get(f'{eid}.{k}'))] if isinstance(v, str)})
        if (types == ['Coding'] and fixed and isinstance(fixed[1], dict) and 'code' in fixed[1] and not fixed[1].get('display')
                and isinstance(fixed_value(self.by_id.get(eid + '.display')), str)):
            fixed = (fixed[0], dict(fixed[1], display=fixed_value(self.by_id[eid + '.display'])))
        unit = fixed_value(self.by_id.get(eid + '.unit')) or fixed_value(self.by_id.get(eid + '.code'))
        if fixed and typ == 'quantity' and isinstance(fixed[1], dict) and 'value' not in fixed[1]:
            # a pattern that pins the unit only
            unit = unit if isinstance(unit, str) else fixed[1].get('unit') or fixed[1].get('code')
            fixed = None
        if not fixed and typ == 'quantity' and isinstance(unit, str):
            n['values'] = ['Unit: ' + unit]
            n['options'] = [unit]
            n.pop('more', None)
        if fixed:
            fv = fixed[1]
            codings = fv.get('coding', []) if isinstance(fv, dict) else []
            if isinstance(fv, dict) and 'code' in fv and 'system' in fv:
                codings = [fv]
            for c in codings:
                disp = 'code' in c and (c.get('display') or self.b.display(c.get('system'), c['code']))
                if disp:
                    codes[c['code']] = disp
            shown = ', '.join(fmt(c, codes) for c in codings) if len(codings) > 1 else fmt(fv, codes)
            if codings and n['type'] == 'coded':
                ex = self.example_value(eid, codes, systems)
                if ex and ',' not in ex and shown == codings[0].get('code'):
                    shown = ex
                n['values'] = ['Fixed: ' + shown]
                n['options'] = [shown]
                n.pop('more', None)
                n.pop('exs', None)
                n.pop('fx', None)
                if ex:
                    n['ex'] = ex
            elif (isinstance(fv, str) or not codings and fixed[0].startswith('fixed')) and n['type'] == 'coded':
                n['values'] = ['Fixed: ' + shown]
                n['options'] = [shown]
                n.pop('more', None)
                n.pop('exs', None)
            else:
                n.setdefault('values', []).insert(0, 'Fixed: ' + shown)
        src = [e] + ([self.by_id[eid + '.value']] if typ == 'quantity' and eid + '.value' in self.by_id else [])
        if [t.get('code') for t in e.get('type', [])] == ['Extension']:
            src += [x for x in [self.by_id.get(eid + '.value[x]')] + [x for x in self.kids.get(eid + '.value[x]', []) if is_slice(x['id'])] if x]
        lo, hi = ([v for x in src for k, v in x.items() if k.startswith(m)][:1] for m in ('minValue', 'maxValue'))
        if lo or hi:
            lo_s, hi_s = (fmt(x[0]) if x else '' for x in (lo, hi))
            n.setdefault('values', []).append(f'Range: {lo_s} to {hi_s}' if lo and hi else f'Minimum: {lo_s}' if lo else f'Maximum: {hi_s}')
            if typ in ('count', 'decimal'):
                n['range'] = [x[0] if x and isinstance(x[0], (int, float)) else None for x in (lo, hi)]
        if code in FIXED_PARTS:
            for part in FIXED_PARTS[code]:
                fv = fixed_value(self.by_id.get(f'{eid}.{part}'))
                if fv is None and isinstance(whole, dict):
                    fv = whole.get(part)
                if fv is None and self.child_fixed(f'{eid}.{part}'):
                    fv = {'coding': self.child_fixed(f'{eid}.{part}')}
                c = next(iter(fv.get('coding', [])), None) if isinstance(fv, dict) else None
                shown = (c.get('display') or self.b.display(c.get('system'), c.get('code')) or c.get('code')) if c else ((self.b.display(CODE_SYSTEMS[(code, part)], fv) or humanize(fv)) if (code, part) in CODE_SYSTEMS else fv) if isinstance(fv, str) else None
                if shown:
                    n['values'] = [x for x in n.get('values', []) if not x.startswith(humanize(part) + ':')] + [f'{humanize(part)}: {shown}']
        if eid in self.cfg.get('values', {}):
            n['values'] = self.cfg['values'][eid] + n.get('values', [])
        return n

    def rules(self):
        """Invariants the profile (or a profile it derives from) adds, as (element id, text) pairs."""
        core = self.b.sd_by_url('http://hl7.org/fhir/StructureDefinition/' + str(self.sd.get('type', ''))) or {}
        known = {c.get('key') for x in core.get('snapshot', {}).get('element', []) for c in x.get('constraint', [])} | self.b.core_keys()
        out, seen = [], set()
        for x in self.els:
            for c in x.get('constraint', []):
                src = str(c.get('source') or '').split('|')[0]
                base = self.b.sd_by_url(src) if src else None
                if (c.get('key') in known or c.get('key') in seen or not isinstance(c.get('human'), str)
                        or (base or {}).get('derivation') == 'specialization'
                        or src.startswith('http://hl7.org/fhir/StructureDefinition/') and (base or {}).get('kind') != 'resource'):
                    continue
                seen.add(c.get('key'))
                out.append((x['id'], ' '.join(c['human'].split()) + (' (recommended)' if c.get('severity') == 'warning' else '')))
        return out

    def child_fixed(self, eid, optional=False):
        """Codings fixed on an element's parts: coding.code, or the required coding slices of a CodeableConcept."""
        out = []
        for cid in [eid + '.coding'] + [c['id'] for c in self.kids.get(eid + '.coding', []) if is_slice(c['id'])]:
            ce = self.by_id.get(cid)
            if not ce or ce.get('max') == '0' or (cid != eid + '.coding' and (ce.get('min', 0) < 1) != optional) or optional and cid == eid + '.coding':
                continue
            fv = fixed_value(ce)
            code = fv.get('code') if isinstance(fv, dict) else fixed_value(self.by_id.get(cid + '.code'))
            if isinstance(code, str):
                system = fv.get('system') if isinstance(fv, dict) else fixed_value(self.by_id.get(cid + '.system'))
                display = (fv.get('display') if isinstance(fv, dict) else None) or fixed_value(self.by_id.get(cid + '.display'))
                out.append({'system': system, 'code': code, **({'display': display} if isinstance(display, str) and display else {})})
        return out

    def part_binding(self, eid, typ):
        """A binding the profile puts on a part of a datatype shown as one field, e.g. Identifier.type."""
        base = self.b.sd_by_url('http://hl7.org/fhir/StructureDefinition/' + typ)
        # without the base datatype, only the IG's own value sets are known not to be the default binding
        base_vs = {x['path']: (x.get('binding') or {}).get('valueSet', '').split('|')[0]
                   for x in base.get('snapshot', {}).get('element', [])} if base else None
        out = []
        for c in self.kids.get(eid, []):
            name = c['path'].rpartition('.')[2]
            for x in [c] + [k for k in self.kids.get(c['id'], []) if is_slice(k['id']) and k.get('min', 0) >= 1]:
                vs = (x.get('binding') or {}).get('valueSet')
                if (vs and name in PART_ORDER and x.get('max') != '0'
                        and (vs.split('|')[0] != base_vs.get(f'{typ}.{name}') if base_vs is not None else vs.split('|')[0] in self.b.local_vs)
                        and name not in [o[1] for o in out]):
                    out.append((x['binding'], name))
        return sorted(out, key=lambda o: PART_ORDER.index(o[1]))

    @staticmethod
    def ext_value(els, base):
        """Types, binding and reference targets of an extension's value; None if it has no value (a complex extension)."""
        vx = next((x for x in els if x['id'] == base + '.value[x]'), None)
        if vx is None:  # STU3 snapshots may name the typed value, e.g. valueCoding
            vx = next((x for x in els if re.fullmatch(re.escape(base) + r'\.value[A-Z]\w*', x['id']) and x.get('type')), None)
        if vx is None or vx.get('max') == '0':
            return None
        parts = [x for x in els if x['id'].startswith(base + '.value[x]:') and '.' not in x['id'][len(base) + 9:]
                 and x.get('max') != '0' and x.get('type')]
        # an unconstrained value[x] lists every datatype; its type slices then say which ones are used
        used = [vx] if vx.get('type') and (len(vx['type']) <= 10 or not parts) else parts
        types = list(dict.fromkeys(t['code'] for x in used for t in x.get('type', [])))
        within = {x['id'] + s for x in [vx] + parts for s in ('.coding', '.coding.code', '.code')}
        part = next((x for x in parts if x.get('binding')), None)
        binding = (vx.get('binding') or (dict(part['binding'], forType=part['type'][0]['code']) if part else None)
                   or next((x['binding'] for x in els if x['id'] in within and x.get('binding')), {}))
        by_type = {x['type'][0]['code']: x for x in parts if len(x.get('type', [])) == 1}
        targets = [p for x in used for t in x.get('type', []) for p in (by_type.get(t['code'], {}).get('type', [t])[0] if used is not parts else t).get('targetProfile', [])]
        return types, binding, targets

    def ext_sd(self, e):
        return self.b.sd_by_url((e.get('type', [{}])[0].get('profile') or [''])[0])

    def extension_info(self, e):
        eid = e['id']
        info = self.ext_value(self.els, eid)
        info = info if info and info[0] else None
        ext = None if info else self.ext_sd(e)
        els = (ext or {}).get('snapshot', {}).get('element')
        if els and not info:
            info = self.ext_value(els, els[0]['id'])
        return info or (['string'], {}, [])

    def complex_extension(self, e):
        """Sub-extension nodes of an extension that has parts instead of a value."""
        ext = self.ext_sd(e)
        els = (ext or {}).get('snapshot', {}).get('element')
        if not els or ext.get('url') in self.ext_stack:
            return None
        root = els[0]['id']
        if self.ext_value(els, root) is not None:
            return None
        merged = [dict(self.by_id[e['id'] + x['id'][len(root):]], id=x['id'], path=x['path'])
                  if e['id'] + x['id'][len(root):] in self.by_id else x for x in els]
        sub = Profile(self.b, ext['id'], {}, sd=dict(ext, snapshot={'element': merged}))
        sub.ext_stack = self.ext_stack + (ext.get('url'),)
        objs = self.resolve([self.example], e['id'].split('.')[1:], e['id'].split('.')[0]) if self.example else []
        sub.example = {'extension': [x for o in objs if isinstance(o, dict) for x in o.get('extension', [])],
                       'contained': self.example.get('contained', []), 'language': self.example.get('language')} if objs else None
        if sub.example:
            self.b.copies[id(sub.example)] = self.example
        out = []
        for c in sub.children(root):
            if not is_slice(c['id']) or c.get('max') == '0' or is_type_marker(sub.by_id, c['id']):
                continue
            n = sub.node(c['id'])
            walk(n, lambda x: x.update(path=e['id'] + x['path'][len(root):]) if x.get('path') else None)
            out.append(n)
        self.b.copies.pop(id(sub.example), None)
        return out

    def add_binding(self, n, binding, on=None, system=None):
        url = binding['valueSet'].split('|')[0]
        vs = self.b.expansions.get(url) or self.b.package_expansion(url)
        strength = binding.get('strength', '')
        title = ((vs or {}).get('title') or (vs or {}).get('name') or url.rstrip('/').split('/')[-1]).strip()
        n['vs'] = {'title': title, 'strength': strength, 'url': url}
        if url in self.b.local_vs:
            n['vs']['page'] = f"ValueSet-{self.b.local_vs[url]}.html"
        also = [self.additional_binding(a) for a in binding.get('additional', []) if a.get('valueSet')]
        if also:
            n['vs']['also'] = also
        if on:
            n['vs']['on'] = humanize(on)
        contains = [dict(c, display=(self.b.display(c.get('system'), c['code']) if c.get('display') is None or self.b.display(c.get('system'), c['code'])
                                     and self.b.has_en(c.get('system'), c['code']) else c['display'])) if 'code' in c else c
                    for c in flatten_contains((vs or {}).get('expansion', {}).get('contains', []))]
        total = (vs or {}).get('expansion', {}).get('total') or len(contains)
        if not truncated(vs):
            total -= sum(1 for c in contains if c.get('abstract'))
        if system and any(c.get('system') != system for c in contains if 'code' in c):
            contains = [c for c in contains if c.get('system') == system]
            total = len(contains)
            self.b.display(system, '')
        complete = system and self.b.cache.get(('complete', system)) == total
        count = (f'{total}+' if total else '') if truncated(vs) and total <= len(contains) and not complete else total
        n['vs']['total'] = count
        shown = [c.get('display') or c['code'] for c in contains if not c.get('abstract')]
        vals = n.setdefault('values', [])
        if on:
            vals.append(f"{humanize(on)}: {', '.join(shown) if shown and total <= MAX_VALUES else title + (f' ({count} codes)' if total else '')}")
        elif shown and total <= MAX_VALUES:
            scores = [c.get('ordinal') if 'ordinal' in c else ordinal(c) for c in contains if not c.get('abstract')]
            vals.extend(f"{x} ({o:g})" if o is not None else x for x, o in zip(shown, scores))
        else:
            vals.append(f'{title}{f" ({count} codes)" if total else ""}')
        if shown:
            n['options'] = shown[:MAX_OPTIONS]
            if total > len(n['options']):
                n['more'] = total - len(n['options'])
        return {c['code']: c.get('display') for c in contains if 'code' in c}

    def additional_binding(self, a):
        """An R5 binding.additional entry: its value set, purpose and the condition (usage) under which it applies."""
        url = a['valueSet'].split('|')[0]
        vs = self.b.expansions.get(url) or self.b.package_expansion(url) or {}
        implicit = url[:-3] if url.endswith('/vs') else None
        title = vs.get('title') or vs.get('name') or (f"Any code from {self.b.system_title(implicit)}"
                                                      if implicit else url.rstrip('/').split('/')[-1])
        out = {'title': title, 'strength': a.get('purpose', '')}
        if a.get('shortDoco'):
            out['note'] = a['shortDoco']
        if url in self.b.local_vs:
            out['page'] = f"ValueSet-{self.b.local_vs[url]}.html"
        when = []
        for u in a.get('usage', []):
            path = (u.get('code') or {}).get('code', '')
            el = next((x for x in self.els if x['id'] == path), None)
            label = self.labels.get(path) or (el and el.get('label')) or humanize(path.rpartition('.')[2] or path)
            value = choice(u, 'value')
            codes = {c['code']: c.get('display') or self.b.display(c.get('system'), c['code']) or c['code'] for c in all_codings(value) if 'code' in c}
            when.append(f"{label} is {fmt(value, codes)}")
        if when:
            out['when'] = ' or '.join(when)
        return out

    # ---------- example values ----------
    def example_value(self, eid, codes=None, systems=()):
        return ', '.join(self.example_values(eid, codes, systems)) or None

    def example_values(self, eid, codes=None, systems=(), first=False):
        if not self.example:
            return []
        vals = self.resolve([self.example], eid.split('.')[1:], eid.split('.')[0], first)
        head, _, key = eid.rpartition('.')
        if vals and all(isinstance(v, str) for v in vals) and head and ':' not in key and not key.endswith('[x]'):
            parents = self.resolve([self.example], head.split('.')[1:], head.split('.')[0], first) if '.' in head else [self.example]
            if len(parents) == len(vals) and all(isinstance(x, dict) and isinstance(x.get(key), str) for x in parents):
                vals = [en_text(x, key) for x in parents]
        codes = dict(codes or {})
        for v in vals:
            for c in codings_in(v):
                if own_display(c, self.example.get('language')):
                    codes[c['code']] = own_display(c, self.example.get('language'))
                elif not codes.get(c['code']):
                    d = self.b.display(c.get('system'), c['code'])
                    if d:
                        codes[c['code']] = d
            for a in addresses(v):
                for k in ('city', 'district', 'state', 'country'):
                    vs = next(((x.get('binding') or {}).get('valueSet') for x in self.els if x['id'].startswith(eid)
                               and x['id'].endswith('.' + k) and (x.get('binding') or {}).get('valueSet')), None) or self.b.address_vs(k)
                    if isinstance(a.get(k), str) and vs and not codes.get(a[k]):
                        d = next(filter(None, (self.b.display(sys_, a[k]) for sys_ in self.b.vs_systems(vs.split('|')[0]))), None)
                        if d:
                            codes[a[k]] = d
            if isinstance(v, dict) and isinstance(v.get('type'), str) and 'amount' in v and not codes.get(v['type']):
                codes[v['type']] = self.b.display('http://hl7.org/fhir/price-component-type', v['type'])
            if isinstance(v, dict) and 'url' in v:
                v = next((v[k] for k in v if k.startswith('value')), v)
            if isinstance(v, str) and not codes.get(v):
                d = next(filter(None, (self.b.display(sys_, v) for sys_ in systems)), None)
                if d:
                    codes[v] = d
        out = []
        for v in vals:
            if isinstance(v, dict) and 'url' in v and (isinstance(choice(v, 'value'), str) or isinstance(v.get('valueReference'), dict)):
                v = choice(v, 'value')
            res = v if isinstance(v, dict) and isinstance(v.get('resourceType'), str) else (
                v.get('resource') if isinstance(v, dict) and isinstance(v.get('resource'), dict) and isinstance(v['resource'].get('resourceType'), str) else None)
            if res is not None:
                # a contained resource reads its #refs and language from the container; a Bundle entry stands alone
                inside = res is v and any(c is res or c == res for c in as_list((self.example or {}).get('contained')))
                s = self.b.summarize(res, self.example if inside else None) or fmt(res)
            elif eid.rpartition('.')[2] != 'url' and self.b.canonical(v):
                s = self.b.describe(self.b.canonical(v))
            elif isinstance(v, dict) and isinstance(v.get('reference'), str) and not v.get('display'):
                s = self.b.describe(v['reference'], self.example)
            elif isinstance(v, dict) and isinstance(v.get('reference'), dict) and not v['reference'].get('display') and 'reference' in v['reference']:
                s = self.b.describe(v['reference']['reference'], self.example)
                if v.get('concept'):
                    s = f"{fmt(v['concept'], codes)} ({s})"
            else:
                s = re.sub(r'(?<![\w/.:#-])(?:[A-Z][A-Za-z]+/|#)[A-Za-z0-9.-]{1,64}(?:/_history/[A-Za-z0-9.-]{1,64})?(?![\w/.-])', lambda m: self.b.describe(m.group(0), self.example), fmt(v, codes))
            if s and s not in out:
                out.append(s)
        return out[:4]

    def prune_fx(self, n, shown=frozenset()):
        """Keep a leaf's first-repetition form values only when each repeating parent shows as a group above it."""
        if n.get('children'):
            for c in n['children']:
                self.prune_fx(c, shown | {n.get('path')})
        elif 'fx' in n:
            parts = n['path'].split('.')
            if any(a not in shown and (self.by_id.get(a) or {}).get('max', '1') not in ('0', '1')
                   for a in ('.'.join(parts[:i]) for i in range(2, len(parts)))):
                n.pop('fx')

    def resolve(self, objs, segs, prefix, first=False):
        for i, seg in enumerate(segs):
            if first:
                objs = objs[:1]
            name, _, slc = seg.partition(':')
            ext_next = i + 1 < len(segs) and segs[i + 1].split(':')[0] in ('extension', 'modifierExtension')
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
                    if ext_next and '_' + name in o and not isinstance(v, dict) and not (isinstance(v, list) and v and isinstance(v[0], dict)):
                        v = o['_' + name]
                    vals = v if isinstance(v, list) else ([v] if v is not None else [])
                if slc and not name.endswith('[x]'):
                    vals = [v for v in vals if self.matches(v, prefix)]
                nxt.extend(vals)
            objs = nxt
        return objs

    def type_profile_element(self, slice_id, rel):
        """A part of a slice that is not in the snapshot, read from the datatype profile of its nearest listed ancestor."""
        parts = rel.split('.')
        for k in range(len(parts) - 1, -1, -1):
            owner = self.by_id.get('.'.join([slice_id] + parts[:k])) or {}
            rest = '.'.join(parts[k:])
            for t in owner.get('type', []):
                sd = self.b.sd_by_url((t.get('profile') or [''])[0])
                els = {x['id']: x for x in (sd or {}).get('snapshot', {}).get('element', [])}
                hit = els.get(f"{t['code']}.{rest}") or els.get(f"{t['code']}.{rest}[x]")
                if hit:
                    return hit
        return None

    def matches(self, v, slice_id):
        e = self.by_id.get(slice_id)
        if e is None or not isinstance(v, dict):
            return False
        if e['path'].split('.')[-1] in ('extension', 'modifierExtension'):
            prof = (e.get('type', [{}])[0].get('profile') or [''])[0].split('|')[0]
            return v.get('url') == (prof or fixed_value(self.by_id.get(slice_id + '.url')) or e.get('sliceName'))
        disc = (self.by_id.get(parent_id(slice_id)) or {}).get('slicing', {}).get('discriminator', [])
        if not disc:
            return False
        for d in disc:
            if d['type'] == 'exists':
                path = [x for x in d['path'].split('.') if x != '$this']
                el = self.by_id.get(f"{slice_id}.{'.'.join(path)}")
                present = bool(self.at(v, [x.replace('[x]', '') for x in path]) if path else [v])
                if el and (el.get('max') == '0' and present or el.get('min', 0) >= 1 and not present):
                    return False
                continue
            if d['type'] in ('type', 'profile'):
                if not self.type_matches(v, slice_id, d):
                    return False
                continue
            if d['type'] not in ('value', 'pattern'):
                return False
            segs = [x for x in d['path'].split('.') if x != '$this']
            cut = segs.index('resolve()') if 'resolve()' in segs else len(segs)
            rel = '.'.join(segs[:cut])
            el = e if not rel else (self.by_id.get(f"{slice_id}.{rel}") or self.by_id.get(f"{slice_id}.{rel}[x]") or self.type_profile_element(slice_id, rel))
            got = [v]
            for key in segs:
                if key == 'resolve()':
                    got = [r for r in map(self.resolve_ref, got) if r]
                else:
                    got = [x for g in got if isinstance(g, dict) for x in as_list(choice(g, key))]
            if cut < len(segs):
                el = self.target_element(el, '.'.join(segs[cut + 1:]))
            want = fixed_value(el)
            if want is None:
                vs = ((el or {}).get('binding') or {}).get('valueSet', '').split('|')[0]
                exp = (self.b.expansions.get(vs) or self.b.package_expansion(vs) or {}) if vs else {}
                contained = flatten_contains(exp.get('expansion', {}).get('contains', []))
                allowed = {(c.get('system'), c.get('code')) for c in contained}
                partial = not contained or truncated(exp)
                systems = set(self.b.vs_systems(vs)) if vs and partial else set()
                prims = [g for g in got if isinstance(g, str)]
                if not any((c.get('system'), c['code']) in allowed or c.get('system') in systems for c in codings_in(got)) and not any(
                        g in {c for _, c in allowed} for g in prims):
                    return False
                continue
            if not any(contains(g, want) for g in got):
                return False
        return True

    def target_element(self, ref_el, rel):
        """The element at rel in the first target profile of a reference element that fixes or binds it."""
        for t in (ref_el or {}).get('type', []):
            for u in t.get('targetProfile', []):
                sd = self.b.sd_by_url(u.split('|')[0]) or {}
                ids = {f"{sd.get('type')}.{rel}", f"{sd.get('type')}.{rel}[x]"}
                x = next((x for x in sd.get('snapshot', {}).get('element', []) if x['id'] in ids), None)
                if x and (fixed_value(x) is not None or (x.get('binding') or {}).get('strength') == 'required'):
                    return x
        return None

    def slice_kinds(self, slice_id, d):
        """Resource or data types and profiles a type/profile discriminator asks of a slice: (types, profiles, segments)."""
        segs = [x for x in d['path'].replace('[x]', '').split('.') if x != '$this']
        rel = '.'.join(x for x in segs if x != 'resolve()')
        el = self.by_id.get(slice_id) if not rel else (self.by_id.get(f"{slice_id}.{rel}") or self.by_id.get(f"{slice_id}.{rel}[x]"))
        kinds = (el or {}).get('type', [])
        if 'resolve()' in segs:
            urls = [u.split('|')[0] for t in kinds for u in t.get('targetProfile', [])]
            types = {(self.b.sd_by_url(u) or {}).get('type') or u.rstrip('/').split('/')[-1] for u in urls}
        else:
            urls = [u.split('|')[0] for t in kinds for u in t.get('profile', [])]
            types = {t.get('code') for t in kinds}
        profiles = {u for u in urls if (self.b.sd_by_url(u) or {}).get('derivation') == 'constraint'}
        return types, profiles, segs

    def required_fixed(self, url):
        """(path, value) of every fixed or pattern element a profile requires, at any depth."""
        key = ('reqfixed', url)
        if key not in self.b.cache:
            els = (self.b.sd_by_url(url) or {}).get('snapshot', {}).get('element', [])
            mins = {x['id']: x.get('min', 0) for x in els}
            out = []
            for x in els:
                parts = x['id'].split('.')
                if len(parts) > 1 and fixed_value(x) is not None and all(
                        mins.get('.'.join(parts[:i]), 1) >= 1 for i in range(2, len(parts) + 1)):
                    out.append((x['path'].replace('[x]', '').split('.')[1:], fixed_value(x)))
            self.b.cache[key] = out
        return self.b.cache[key]

    @staticmethod
    def at(g, path):
        vals = [g]
        for seg in path:
            vals = [x for y in vals if isinstance(y, dict) for x in as_list(choice(y, seg))]
        return vals

    def conforms(self, g, url):
        fixed = self.required_fixed(url)
        return bool(fixed) and all(any(contains(y, want) for y in self.at(g, path)) for path, want in fixed)

    def lineage(self, url):
        """A profile and the constraint profiles it derives from."""
        out = []
        while url and url not in out and len(out) < 20:
            sd = self.b.sd_by_url(url)
            if not sd or sd.get('derivation') != 'constraint':
                break
            out.append(url)
            url = (sd.get('baseDefinition') or '').split('|')[0]
        return out

    def type_matches(self, v, slice_id, d):
        """A type or profile discriminator: the resource or choice type, or the profile the value claims or whose required fixed parts it carries."""
        types, profiles, segs = self.slice_kinds(slice_id, d)
        parents, got = [v], [v]
        for key in segs:
            parents = got
            if key == 'resolve()':
                got = [self.resolve_ref(g) for g in got]
                got = [g for g in got if g]
            else:
                got = [x for g in got if isinstance(g, dict) for x in as_list(choice(g, key))]
        res = [g for g in got if isinstance(g, dict) and 'resourceType' in g]
        if not res and d['type'] == 'profile':
            return any(isinstance(g, dict) and any(self.conforms(g, u) for u in profiles) for g in got)
        if not res:
            return bool(segs) and any(
                isinstance(p, dict) and segs[-1] + c[:1].upper() + c[1:] in p for p in parents for c in types if c)
        res = [g for g in res if g['resourceType'] in types]
        if d['type'] == 'type' or not profiles:
            return bool(res)
        for g in res:
            claimed = {u.split('|')[0] for u in as_list((g.get('meta') or {}).get('profile'))}
            if claimed:
                # a profile derived from the slice's, or a base of it whose required fixed values the resource carries
                if any(set(self.lineage(u)) & profiles for u in claimed) or any(
                        claimed & set(self.lineage(u)) and all(any(contains(y, want) for y in self.at(g, path)) for path, want in self.required_fixed(u))
                        for u in profiles):
                    return True
                continue
            if any(self.conforms(g, u) for u in profiles):
                return True
            # nothing to check against: take it only when no other slice could hold this resource type
            others = [c for c in self.kids.get(parent_id(slice_id), []) if is_slice(c['id']) and c['id'] != slice_id]
            if not any(g['resourceType'] in self.slice_kinds(c['id'], d)[0] for c in others) and not any(
                    self.required_fixed(u) for u in profiles):
                return True
        return False

    def resolve_ref(self, g):
        ref = g.get('reference') if isinstance(g, dict) else None
        if not isinstance(ref, str):
            return None
        if ref.startswith('#'):
            return next((c for c in as_list((self.example or {}).get('contained')) if isinstance(c, dict) and c.get('id') == ref[1:]), None)
        return self.b.find_instance(ref, self.example)

def en_display(c, res):
    """English display of a concept: the base display when the resource is English, else an English designation."""
    if (res.get('language') or 'en')[:2] != 'en':
        d = next((x['value'] for x in c.get('designation', []) if (x.get('language') or '')[:2] == 'en' and x.get('value')), None)
        if d:
            return d
    return c.get('display')


def en_text(r, key):
    """r[key], or its English translation when the resource is written in another language."""
    for ext in (r.get('_' + key) or {}).get('extension', []) if isinstance(r.get('_' + key), dict) else []:
        parts = {x.get('url'): x for x in ext.get('extension', [])}
        if ext.get('url', '').endswith('/translation') and (parts.get('lang') or {}).get('valueCode', '').startswith('en'):
            return (parts.get('content') or {}).get('valueString') or r.get(key)
    return r.get(key)


def walk_leaves(n, f):
    for c in n.get('children', []):
        walk_leaves(c, f) if c.get('children') else f(c)


def form_values(n):
    return n['fx'] if 'fx' in n else n.get('exs') or ([n['ex']] if n.get('ex') else [])


def references(v):
    """Every Reference.reference string inside a resource."""
    if isinstance(v, list):
        return {r for x in v for r in references(x)}
    if isinstance(v, dict):
        return ({re.sub(r'/_history/[^/]+$', '', v['reference'])} if isinstance(v.get('reference'), str) else set()) | {r for x in v.values() for r in references(x)}
    return set()


def addresses(v):
    if isinstance(v, list):
        for x in v:
            yield from addresses(x)
    elif isinstance(v, dict):
        if 'line' in v or 'city' in v or 'district' in v:
            yield v
        for x in v.values():
            if isinstance(x, (dict, list)):
                yield from addresses(x)


def own_display(c, lang):
    """An English instance's own display of a coding, which outranks displays from elsewhere."""
    d = c.get('display')
    return d if isinstance(d, str) and (lang or 'en').startswith('en') and not CYRILLIC.search(d) else None


def all_codings(v):
    if isinstance(v, list):
        for x in v:
            yield from all_codings(x)
    elif isinstance(v, dict):
        if isinstance(v.get('code'), str) and isinstance(v.get('system'), str):
            yield v
        for x in v.values():
            if isinstance(x, (dict, list)):
                yield from all_codings(x)


def truncated(vs):
    """True when an expansion may not list every code (the publisher stops at its count limit)."""
    e = (vs or {}).get('expansion', {})
    unclosed = any(x.get('url', '').endswith('valueset-unclosed') and x.get('valueBoolean') for x in e.get('extension', []))
    n = len(flatten_contains(e.get('contains', [])))
    count = next((p.get('valueInteger') for p in e.get('parameter', []) if p.get('name') == 'count'), None)
    return unclosed or (e.get('total') or 0) > n or (not e.get('total') and count is not None and n >= count)


def as_list(v):
    return v if isinstance(v, list) else [] if v is None else [v]


def choice(o, key):
    """o[key], or for a choice element (value -> valueQuantity) the typed key."""
    if key in o:
        return o[key]
    return next((o[k] for k in o if k.startswith(key) and k[len(key):][:1].isupper()), None)


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
        if v.startswith('<div'):
            return unescape(re.sub(r'\s+', ' ', re.sub(r'<[^>]+>', ' ', v))).strip()
        return codes.get(v) or v
    if isinstance(v, list):
        return ', '.join(filter(None, (fmt(x, codes) for x in v)))
    if 'url' in v and ('extension' in v or any(k.startswith('value') for k in v)):
        val = next((v[k] for k in v if k.startswith('value')), None)
        if val is not None:
            return fmt(val, codes)
        return ', '.join(filter(None, (fmt(x, codes) for x in v.get('extension', []))))
    if 'low' in v or 'high' in v:
        lo, hi = v.get('low') or {}, v.get('high') or {}
        if lo and hi and (lo.get('unit') or lo.get('code')) == (hi.get('unit') or hi.get('code')):
            return f"{lo.get('value', '')} - {fmt(hi, codes)}"
        return f"{fmt(lo, codes) or '...'} - {fmt(hi, codes) or '...'}" if lo and hi else (f"from {fmt(lo, codes)}" if lo else f"up to {fmt(hi, codes)}")
    if 'repeat' in v or 'event' in v:
        r = v.get('repeat') or {}
        parts = [fmt(v.get('code'), codes)] if v.get('code') else []
        if 'frequency' in r or 'period' in r:
            f, per = r.get('frequency', 1), r.get('period', 1)
            unit = UNIT_WORDS.get(r.get('periodUnit'), r.get('periodUnit', ''))
            times = (f"{f}-{r['frequencyMax']} times" if r.get('frequencyMax') and r['frequencyMax'] != f
                     else {1: 'once', 2: 'twice'}.get(f, f'{f} times'))
            every = ('' if not unit else f"every {per}-{r['periodMax']} {unit}s" if r.get('periodMax') and r['periodMax'] != per else
                     f"{'an' if unit[:1] in ('a', 'e', 'i', 'o', 'u', 'h') else 'a'} {unit}" if per == 1 else f'every {per} {unit}s')
            parts.append(f"{times} {every}".strip())
        if r.get('duration'):
            unit = UNIT_WORDS.get(r.get('durationUnit'), r.get('durationUnit', ''))
            parts.append(f"for {r['duration']}{'-' + str(r['durationMax']) if r.get('durationMax') else ''} {unit}{'' if r['duration'] == 1 and not r.get('durationMax') else 's'}".strip())
        if r.get('count'):
            parts.append(f"{r['count']}-{r['countMax']} times in total" if r.get('countMax') and r['countMax'] != r['count']
                         else 'once in total' if r['count'] == 1 else f"{r['count']} times in total")
        if r.get('timeOfDay'):
            parts.append('at ' + fmt(r['timeOfDay'], codes))
        if r.get('dayOfWeek'):
            parts.append('on ' + ', '.join(r['dayOfWeek']))
        if r.get('when'):
            parts.append(fmt(r['when'], codes))
        b = r.get('boundsDuration') or {}
        if b.get('value') is not None and UNIT_WORDS.get(b.get('code')):
            parts.append(f"for {b['value']} {UNIT_WORDS[b['code']]}{'' if b['value'] == 1 else 's'}")
        elif b:
            parts.append(f"for {fmt(b, codes)}")
        for k in ('boundsPeriod', 'boundsRange'):
            if r.get(k):
                parts.append(fmt(r[k], codes))
        if v.get('event'):
            parts.append(fmt(v['event'], codes))
        return ', '.join(filter(None, parts))
    if 'availableTime' in v or 'notAvailableTime' in v:
        return '; '.join(' '.join(filter(None, [', '.join(t.get('daysOfWeek', [])), 'all day' if t.get('allDay') else
                                                '-'.join(fmt(t[k]) for k in ('availableStartTime', 'availableEndTime') if k in t)]))
                         for t in v.get('availableTime', []))
    if 'who' in v and 'when' in v:
        return ', '.join(filter(None, (fmt(v.get('type'), codes), fmt(v['who'], codes), fmt(v['when']))))
    if 'currency' in v and 'value' in v:
        return f"{v['value']} {v['currency']}"
    if isinstance(v.get('type'), str) and 'amount' in v:
        return f"{(codes or {}).get(v['type']) or v['type']}: {fmt(v['amount'], codes)}"
    if 'dimensions' in v and ('origin' in v or 'data' in v):
        n = len(str(v.get('data', '')).split())
        step = f"{v['period']} ms" if 'period' in v else f"{v['interval']} {v.get('intervalUnit', 'ms')}" if 'interval' in v else ''
        return ', '.join(filter(None, [f"{n} samples" if n else 'samples', f"every {step}" if step else '',
                                       f"{v['dimensions']} channels" if v.get('dimensions', 1) > 1 else '']))
    if 'contentType' in v or 'data' in v or ('url' in v and ('title' in v or set(v) <= {'url', 'size', 'hash', 'creation', 'language', 'height', 'width', 'frames', 'duration', 'pages'})):
        return v.get('title') or v.get('url') or v.get('contentType', '')
    if 'telecom' in v and ('name' in v or 'purpose' in v or 'organization' in v):
        return ', '.join(filter(None, [fmt(v.get('name'), codes) or fmt(v.get('purpose'), codes), fmt(v.get('telecom'), codes)]))
    if 'concept' in v or 'reference' in v and isinstance(v.get('reference'), dict):
        return fmt(v.get('concept'), codes) or fmt(v.get('reference'), codes)
    if 'coding' in v or (isinstance(v.get('text'), str) and len(v) <= 2 and not any(k.startswith('asNeeded') for k in v)):
        if v.get('text'):
            return en_text(v, 'text')
        c = next((c for c in v.get('coding', []) if c.get('code') in codes), (v.get('coding') or [{}])[0])
        return codes.get(c.get('code')) or c.get('display') or c.get('code', '')
    if 'code' in v and 'system' in v and 'value' not in v:
        return codes.get(v['code']) or v.get('display') or v['code']
    if isinstance(v.get('system'), str) and v['system'] in CONTACT_SYSTEMS and 'code' not in v:
        return v.get('value') or ' '.join(filter(None, [v.get('use'), v['system']]))
    if isinstance(v.get('code'), dict) and 'value' in v:
        return f"{fmt(v['code'], codes)}: {fmt(v['value'], codes)}".strip(': ')
    if 'value' in v and ('unit' in v or isinstance(v.get('code'), str)):
        word = not v.get('unit') and v.get('system') == 'http://unitsofmeasure.org' and UNIT_WORDS.get(v.get('code'))
        if word:
            return f"{v.get('comparator', '')}{v['value']} {word}{'' if v['value'] == 1 else 's'}"
        return f"{v.get('comparator', '')}{v['value']} {v.get('unit') or v.get('code', '')}".strip()
    if 'lowNumerator' in v or 'highNumerator' in v:
        lo, hi = fmt(v.get('lowNumerator')), fmt(v.get('highNumerator'))
        num = f"{lo.partition(' ')[0]}-{hi}" if lo and hi and lo.partition(' ')[2] == hi.partition(' ')[2] else f"{lo}-{hi}" if lo and hi else f"{lo} or more" if lo else f"up to {hi}"
        den = fmt(v.get('denominator'))
        return f"{num} / {den}" if den else num
    if 'numerator' in v:
        den = fmt(v.get('denominator'))
        return f"{fmt(v['numerator'])} / {den}" if den else fmt(v['numerator'])
    if 'start' in v or 'end' in v:
        return (f"{fmt(v['start'])} to {fmt(v['end'])}" if v.get('start') else f"until {fmt(v['end'])}") if v.get('end') else f"since {fmt(v['start'])}"
    if 'value' in v:
        return (v['comparator'] if isinstance(v.get('comparator'), str) else '') + fmt(v['value'])
    if 'display' in v or 'reference' in v:
        return v.get('display') or v.get('reference', '')
    if 'family' in v or 'given' in v:
        return v.get('text') or ' '.join(filter(None, v.get('prefix', []) + v.get('given', []) + [v.get('family', '')] + v.get('suffix', [])))
    if any(k in v for k in ('line', 'city', 'district', 'postalCode')) or set(v) <= ADDRESS_KEYS and (isinstance(v.get('text'), str) or 'country' in v or 'state' in v):
        return v.get('text') or ', '.join(filter(None, v.get('line', []) + [(codes or {}).get(v.get(k)) or v.get(k) for k in ('city', 'district', 'state', 'postalCode', 'country')
                                                                        if isinstance(v.get(k), str)]))
    if 'div' in v:
        return fmt(v['div'])
    if isinstance(v.get('resourceType'), str):
        return f"{v['resourceType']}/{v['id']}" if isinstance(v.get('id'), str) else v['resourceType']
    if 'doseAndRate' in v or any(k.startswith('asNeeded') for k in v) or 'timing' in v and ('route' in v or 'sequence' in v):
        # a Dosage: the sequence number and a false as-needed flag say nothing; a dose carries its own type
        v = {k: x for k, x in v.items() if k != 'sequence' and not (k in ('asNeeded', 'asNeededBoolean') and x is False)}
        for k in ('asNeeded', 'asNeededBoolean'):
            if v.get(k) is True:
                v[k] = 'as needed'
        if v.get('asNeededFor'):
            v.pop('asNeeded', None)
            v['asNeededFor'] = 'as needed for ' + ' or '.join(filter(None, (fmt(x, codes) for x in v['asNeededFor'])))
        if v.get('asNeededCodeableConcept'):
            v['asNeededCodeableConcept'] = 'as needed for ' + fmt(v['asNeededCodeableConcept'], codes)
        if v.get('doseAndRate'):
            v['doseAndRate'] = [', '.join(filter(None, (
                f"{fmt(d[k], codes)} ({fmt(d['type'], codes)})" if d.get('type') else fmt(d[k], codes)
                for k in d if k.startswith(('dose', 'rate'))))) for d in v['doseAndRate']]
    parts = [f"{humanize(re.sub('Boolean$', '', k))}: {fmt(x)}" if isinstance(x, bool) else fmt(x, codes)
             for k, x in v.items() if k not in ('id', 'extension', 'modifierExtension', 'url', 'resourceType')]
    out = ', '.join(filter(None, parts))
    return out if len(out) <= 200 else out[:200].rsplit(' ', 1)[0] + ' ...'


def walk(n, fn):
    fn(n)
    for c in n.get('children', []):
        walk(c, fn)


def build_view(b, view, shared=None):
    profiles = {}

    def prof(pid):
        if pid not in profiles:
            cfg = dict((shared or {}).get(pid, {}))
            for k, v in view.get('profiles', {}).get(pid, {}).items():
                if isinstance(v, dict) and isinstance(cfg.get(k), dict):
                    v = {**cfg[k], **v}
                elif isinstance(v, list) and isinstance(cfg.get(k), list):
                    v = cfg[k] + [x for x in v if x not in cfg[k]]
                cfg[k] = v
            profiles[pid] = Profile(b, pid, cfg)
        return profiles[pid]

    main = prof(view['profile'])
    sections = []
    if not view.get('sections'):
        root = main.els[0]['id']
        for e in main.children(root):
            if main.visible(e):
                n = main.node(e['id'])
                main.prune_fx(n)
                sections.append(n)
                if not n.get('children'):
                    for x in main.leaf_extensions(e['id']):
                        main.prune_fx(x)
                        sections.append(x)
    for s in view.get('sections', []):
        p = prof(s.get('from', view['profile']))
        if p is not main and not s.get('element') and not p.cfg.get('example'):
            # no linking element: an instance that references the main example, or none
            target = main.example_ref
            ref = next((r for r in b.instances_of(p.sd.get('url')) if target and any(
                f"{x.get('resourceType')}/{x.get('id')}" == target for u in references(b.instance(r))
                for x in [b.find_instance(u, b.instance(r))] if isinstance(x, dict))), None)
            p.example = b.instance(ref) if ref else None
            p.example_ref = ref
        if p is not main and s.get('element') and not p.cfg.get('example'):
            # the instance the main example points to, so every section shows one consistent record
            vals = main.resolve([main.example], s['element'].split('.')[1:], s['element'].split('.')[0]) if main.example else []
            refs = [r.get('reference') if isinstance(r, dict) else r for v in vals if isinstance(v, dict) for r in [v.get('reference', v.get('valueReference'))]]
            rtype = p.sd.get('type')
            ref = next((r for r in refs if isinstance(r, str) and (
                any(isinstance(c, dict) and c.get('id') == r[1:] and c.get('resourceType') == rtype for c in as_list(main.example.get('contained')))
                if r.startswith('#') else (b.find_instance(r, main.example) or {}).get('resourceType') == rtype)), None)
            if ref and ref.startswith('#'):
                p.example = next((dict(c, contained=main.example.get('contained', []), language=c.get('language') or main.example.get('language'))
                                  for c in as_list(main.example.get('contained')) if isinstance(c, dict) and c.get('id') == ref[1:]), None)
                if p.example:
                    b.copies[id(p.example)] = main.example
                p.example_ref = main.example_ref if p.example else None
            else:
                p.example = b.find_instance(ref, main.example) if ref else None
                p.example_ref = p.example and f"{p.example['resourceType']}/{p.example['id']}"
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
            e = ap.by_id.get(anchor)
            if e is None:
                sys.exit(f'error: {anchor} is not an element of {ap.pid}')
            ap.used.add(anchor)
            sec = {'label': s['label'], 'type': 'link' if s.get('link') else 'group', 'card': f"{e['min']}..{e['max']}",
                   'path': anchor, 'desc': s.get('desc') or ap.descs.get(anchor) or plain(e.get('short', ''))}
            if e.get('mustSupport'):
                sec['ms'] = True
            if s.get('link'):
                tps = [t for ty in e.get('type', []) for t in ty.get('targetProfile', [])]
                sec['target'] = ' / '.join(dict.fromkeys(b.title_for(t) for t in tps)) or b.title_for(p.sd['url'])
        else:
            sec = {'label': s['label'], 'type': 'group', 'card': s.get('card'), 'desc': s.get('desc', '')}
        if nodes:
            sec['children'] = nodes
        if s.get('collapsed'):
            sec['collapsed'] = True
        for sg in s.get('subgroups', []):
            pool = sec.setdefault('children', [])
            moved = []
            for i in sg['ids']:
                own = [c for c in pool if c.get('path') == i] or [p.node(i)]
                moved += own + [c for c in pool if (c.get('path') or '').startswith(i + '.')]
            first = next((k for k, c in enumerate(pool) if c in moved), len(pool))
            sec['children'] = [c for c in pool if c not in moved]
            group = {'label': sg['label'], 'type': 'group', 'card': None, 'desc': sg.get('desc', ''), 'children': moved}
            if sg.get('collapsed'):
                group['collapsed'] = True
            sec['children'].insert(min(first, len(sec['children'])), group)
        p.prune_fx(sec)
        sections.append(sec)

    # anything Must Support or mandatory at the top level that no section placed
    leftovers = []
    for pid in ([view['profile']] if view.get('sections') else []) + view.get('coverage', []):
        p = prof(pid)
        root = p.els[0]['id']
        for e in p.children(root):
            if p.visible(e) and e['id'] not in p.used:
                leftovers.append(p.node(e['id']))
                p.prune_fx(leftovers[-1])
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
        'examplePage': b.example_page(main.example_ref),
        'root': {'label': view.get('rootLabel', view['title']), 'type': 'group', 'card': '1..1', 'children': sections},
    })
    if view.get('steps'):
        model['steps'] = view['steps']
    if view['kind'] == 'template':
        model['uses'] = [[b.short(profiles[pid].sd.get('title', pid)), f'StructureDefinition-{pid}.html'] for pid in profiles]
        refs = list(dict.fromkeys(r for r in [main.example_ref] + [p.example_ref for p in profiles.values()] if r))
        if len(refs) > 1:
            model['examples'] = [[r, b.example_page(r, main.example)] for r in refs]
    rules, by_path = [], {}
    for p in [main] + [p for p in profiles.values() if p is not main]:
        head = '' if p is main else b.short(p.sd.get('title') or p.pid) + ': '
        for eid, text in p.rules():
            at = '' if eid == p.els[0]['id'] else (p.labels.get(eid) or humanize(eid.rpartition('.')[2].split(':')[-1])) + ': '
            if head + at + text not in rules:
                rules.append(head + at + text)
            if at:
                by_path.setdefault(eid, []).append(text)
    if rules:
        model['rules'] = rules

    def attach_rules(n):
        for text in by_path.get(n.get('path'), []):
            if 'Rule: ' + text not in n.get('values', []):
                n.setdefault('values', []).append('Rule: ' + text)
    walk(model['root'], attach_rules)
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
    ap.add_argument('--external-script', action='store_true',
                    help='write the script to a .js file beside the page (the IG publisher rejects inline scripts)')
    args = ap.parse_args()

    cfg = load(Path(args.config)) if args.config else {}
    b = Build(args.output_dir, cfg.get('titlePrefix', ''), args.packages)
    views = [dict(v, featured=True, kind=v.get('kind', 'archetype')) for v in cfg.get('views', [])]
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
        if args.no_auto or not cfg.get('autoProfiles', True):
            sys.exit(f'error: no curated view matches --only {args.only}' if args.only else 'error: no curated views, and automatic views are off')
        sys.exit(f'error: no resource profiles with snapshots in {args.output_dir}' + (f' match --only {args.only}' if args.only else ''))
    models = [build_view(b, v, cfg.get('profiles')) for v in views]

    pkg = b.pkg
    guide = cfg.get('guideName') or b.ig.get('title') or b.ig.get('name') or pkg.get('title') or pkg.get('name', 'this guide')
    meta = {
        'title': cfg.get('title') or f'{guide} clinical views',
        'intro': cfg.get('intro', ''),
        'guideName': guide,
        'languages': cfg.get('languages', []),
        'igUrl': cfg['igUrl'].rstrip('/') + '/' if cfg.get('igUrl') else '',
        'igVersion': pkg.get('version') or b.ig.get('version', ''),
        'built': re.sub(r'^(\d{4})(\d\d)(\d\d).*', r'\1-\2-\3', pkg.get('date', '')),
    }
    html = (HERE / 'template.html').read_text(encoding='utf-8')
    html = html.replace('<title>Clinical views</title>', f"<title>{escape(meta['title'])}</title>")
    data = json.dumps({'models': models, 'meta': meta}, ensure_ascii=False).replace('<', '\\u003c')
    html = html.replace('/*__DATA__*/null', data)
    if not args.fragment:
        head, sep, body = html.partition('</style>')
        html = ('<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8" />\n'
                '<meta name="viewport" content="width=device-width, initial-scale=1" />\n'
                f'{head}{sep}\n</head>\n<body>{body}</body>\n</html>\n')
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    if args.external_script:
        before, _, rest = html.rpartition('<script>')
        script, _, after = rest.partition('</script>')
        script = script.lstrip('\n')
        out.with_suffix('.js').write_text(script, encoding='utf-8')
        html = f'{before}<script src="{out.with_suffix(".js").name}"></script>{after}'
    out.write_text(html, encoding='utf-8')
    featured = ', '.join(f"{m['id']}: {sum(1 for _ in iter_leaves(m['root']))} elements" for m in models if m.get('featured'))
    size = f"{len(html) // 1024} KB" + (f" + {out.with_suffix('.js').name} {len(script) // 1024} KB" if args.external_script else '')
    print(f"wrote {out}: {len(models)} views ({featured or 'none curated'}), {size}")


def iter_leaves(n):
    if n.get('children'):
        for c in n['children']:
            yield from iter_leaves(c)
    else:
        yield n


if __name__ == '__main__':
    main()
