/*
 * Search across every resource in this guide: titles, names, URLs and descriptions, plus
 * CodeSystem and ValueSet concepts, ConceptMap mappings and NamingSystem identifiers.
 * Jekyll builds the index (see search-index-part.html): search-index.json holds the resources, so
 * they are searchable first, and PARTS more files hold their items, fetched in parallel since the
 * server caps each connection's speed. The Cache API keeps one copy per guide for all languages,
 * keyed by the build stamp on the script tag.
 */
(function () {
  'use strict';

  var LANG = (document.documentElement.lang || 'en').slice(0, 2);
  var STRINGS = {
    en: { loading: 'Loading the index...', failed: 'Could not load the search index.',
      ready: '{r} resources, {c} codes and {m} mappings.', none: 'Nothing found.',
      shown: '{n} matches, showing the first {m}.', count: '{n} matches.', all: 'All',
      match: 'Match', details: 'Details', resource: 'Resource', type: 'Type' },
    ru: { loading: 'Загрузка индекса...', failed: 'Не удалось загрузить поисковый индекс.',
      ready: 'Ресурсов: {r}, кодов: {c}, сопоставлений: {m}.', none: 'Ничего не найдено.',
      shown: 'Совпадений: {n}, показаны первые {m}.', count: 'Совпадений: {n}.', all: 'Все',
      match: 'Совпадение', details: 'Подробности', resource: 'Ресурс', type: 'Тип' },
    uz: { loading: 'Indeks yuklanmoqda...', failed: "Qidiruv indeksini yuklab bo'lmadi.",
      ready: '{r} ta resurs, {c} ta kod va {m} ta moslashtirish.', none: 'Hech narsa topilmadi.',
      shown: "{n} ta moslik, birinchi {m} tasi ko'rsatilgan.", count: '{n} ta moslik.', all: 'Hammasi',
      match: 'Moslik', details: 'Tafsilotlar', resource: 'Resurs', type: 'Turi' }
  };
  var T = STRINGS[LANG] || STRINGS.en;
  var MAX = 200, PARTS = 4;

  var input = document.getElementById('ig-query');
  var chips = document.getElementById('ig-types');
  var status = document.getElementById('ig-status-line');
  var results = document.getElementById('ig-results');
  if (!input) return;
  var tag = document.querySelector('script[data-build]');
  var BUILD = tag ? tag.getAttribute('data-build') : '';
  var FILES = ['search-index.json'];
  for (var p = 1; p <= PARTS; p++) FILES.push('search-index-' + p + '.json');
  var SCOPE = new URL('.', location.href).pathname.replace(new RegExp('/' + LANG + '/$'), '/');

  var resources = [];  // {r, id, t, n, u, d}
  var entries = [];    // {res, kind: r|c|m|n, row, seq, hay}
  var hits = [], type = '', ready = '', codes = 0, maps = 0, pending = true, failed = false;

  function fmt(s, o) { return s.replace(/\{(\w)\}/g, function (_, k) { return o[k]; }); }
  function norm(s) {
    return String(s).toLowerCase().replace(/[‘’ʻʼ`´]/g, "'").replace(/ё/g, 'е');
  }
  function esc(s) {
    return String(s).replace(/[&<>"]/g, function (c) { return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]; });
  }
  function reEsc(s) { return s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'); }
  // A normalized word as a pattern that also matches the raw spellings norm() folded together.
  function loose(w) { return reEsc(w).replace(/'/g, "['‘’ʻʼ`´]").replace(/е/g, '[её]'); }

  // name is a string on canonical resources but HumanName[], Device.name[] etc. on others.
  function label(v) {
    if (typeof v === 'string') return v;
    var n = Array.isArray(v) && v[0];
    return n ? n.text || n.value || n.name || [].concat(n.given || [], n.family || []).join(' ') : '';
  }

  // hay is the key and the texts, normalized and joined by \u0001; score() splits it for hits only.
  function add(res, kind, row, seq, key, texts) {
    entries.push({ res: res, kind: kind, row: row, seq: seq, hay: norm((key || '') + '\u0001' + texts.filter(Boolean).join('\u0001')) });
  }

  function addResources(rows) {
    for (var i = 1; i < rows.length; i++) {
      var row = rows[i];
      row.n = label(row.n);
      if (typeof row.t !== 'string') row.t = row.n || row.id;
      resources.push(row);
      add(i - 1, 'r', row, 0, row.id, [row.t, row.n, row.u, row.d]);
    }
  }

  // A number starts the items of that resource. seq keeps the build order across parts.
  function addPart(rows, p) {
    var cur = -1;
    for (var i = 1; i < rows.length; i++) {
      var row = rows[i], seq = p * 1e7 + i, t;
      if (typeof row === 'number') { cur = row; continue; }
      t = resources[cur].r;
      if (t === 'ConceptMap') {
        add(cur, 'm', row, seq, row[0], [row[1], row[2], row[3]]); maps++;
      } else if (t === 'NamingSystem') {
        add(cur, 'n', row, seq, row[0], []);
      } else {
        var texts = [row[1]];
        for (var j = 3; j < row.length; j += 2) texts.push(row[j]);
        add(cur, 'c', row, seq, row[0], texts); codes++;
      }
    }
  }

  function reset() { resources.length = entries.length = codes = maps = 0; }

  // Storage can be missing or throw (insecure context, private mode, quota); the page then only fetches.
  function openCache() {
    try { return BUILD && window.caches ? caches.open('ig-search ' + SCOPE) : Promise.reject(); } catch (e) { return Promise.reject(e); }
  }
  function cacheKey(f) { return location.origin + SCOPE + f + '?b=' + encodeURIComponent(BUILD); }

  function fromCache() {
    return openCache().then(function (c) {
      return Promise.all(FILES.map(function (f) { return c.match(cacheKey(f)); }));
    }).then(function (rs) {
      return Promise.all(rs.map(function (r) { if (!r) throw new Error('miss'); return r.text(); }));
    }).then(function (texts) {
      var all = texts.map(function (t) { return JSON.parse(t); });
      if (all.some(function (rows) { return rows[0].b !== BUILD; })) throw new Error('stale');
      addResources(all[0]);
      for (var p = 1; p <= PARTS; p++) addPart(all[p], p);
    });
  }

  function save(texts) {
    openCache().then(function (c) {
      return c.keys().then(function (keys) {
        return Promise.all(keys.map(function (k) { return c.delete(k); }));
      }).then(function () {
        return Promise.all(FILES.map(function (f, i) { return c.put(cacheKey(f), new Response(texts[i])); }));
      });
    }).catch(function () {});
  }

  function fromNetwork() {
    reset();
    var texts = [], current = true;
    function get(i) {
      return fetch(FILES[i]).then(function (r) {
        if (!r.ok) throw new Error(r.status);
        return r.text();
      }).then(function (t) {
        var rows = JSON.parse(t);
        texts[i] = t;
        if (rows[0].b !== BUILD) current = false;
        return rows;
      });
    }
    var first = get(0).then(function (rows) { addResources(rows); search(); });
    return Promise.all(FILES.slice(1).map(function (f, i) {
      return Promise.all([get(i + 1), first]).then(function (a) { addPart(a[0], i + 1); });
    })).then(function () { if (current) save(texts); });
  }

  function load() {
    status.textContent = T.loading;
    return fromCache().catch(fromNetwork).then(function () {
      pending = false;
      ready = fmt(T.ready, { r: resources.length.toLocaleString(), c: codes.toLocaleString(), m: maps.toLocaleString() });
    }, function () { failed = true; });
  }

  // While loading, results come from the resources alone, so the status says so instead of a count.
  function state(s) { return failed ? T.failed : pending ? T.loading : s; }

  // Best first: exact code or id, its prefix, exact text, text prefix, word start, anywhere.
  function score(e, q, word) {
    var i, t = e.hay.split('\u0001');
    if (t[0] === q) return 0;
    if (t[0].indexOf(q) === 0) return 1;
    for (i = 1; i < t.length; i++) if (t[i] === q) return 2;
    for (i = 1; i < t.length; i++) if (t[i].indexOf(q) === 0) return 3;
    for (i = 1; i < t.length; i++) if (word.test(t[i])) return 4;
    return 5;
  }

  // One pass over the raw text, so a word never matches inside an earlier <mark> or an entity.
  function mark(text, re) {
    return String(text || '').split(re).map(function (p, i) { return i % 2 ? '<mark>' + esc(p) + '</mark>' : esc(p); }).join('');
  }

  // The publisher's anchor for a code: ASCII spaces dropped, other characters outside [A-Za-z0-9_-] as '.' + char code.
  function anchor(code) {
    return code.replace(/ /g, '').replace(/[^A-Za-z0-9_-]/g, function (c) { return '.' + c.charCodeAt(0); });
  }

  // The display in the page language when the concept has one, else its base display.
  function conceptTerm(row) {
    for (var j = 2; j + 1 < row.length; j += 2) if (row[j] === LANG) return row[j + 1];
    return row[1] || (row.length > 3 ? row[3] : '');
  }

  function render(re) {
    var shown = type ? hits.filter(function (h) { return resources[h.res].r === type; }) : hits;
    var counts = {};
    hits.forEach(function (h) { var r = resources[h.res].r; counts[r] = (counts[r] || 0) + 1; });
    if (type && !counts[type]) counts[type] = 0;
    var types = Object.keys(counts).sort();
    chips.innerHTML = hits.length ? ['<button type="button" data-type=""' + (type ? '' : ' aria-pressed="true"') + '>' +
      esc(T.all) + ' <span>' + hits.length.toLocaleString() + '</span></button>'].concat(types.map(function (t) {
      return '<button type="button" data-type="' + esc(t) + '"' + (t === type ? ' aria-pressed="true"' : '') + '>' +
        esc(t) + ' <span>' + counts[t].toLocaleString() + '</span></button>';
    })).join('') : '';
    status.textContent = state(!shown.length ? T.none : shown.length > MAX
      ? fmt(T.shown, { n: shown.length.toLocaleString(), m: MAX }) : fmt(T.count, { n: shown.length.toLocaleString() }));
    if (!shown.length) { results.innerHTML = ''; return; }
    var rows = shown.slice(0, MAX).map(function (e) {
      var res = resources[e.res], row = e.row, page = res.r + '-' + res.id + '.html', match, details;
      if (e.kind === 'r') {
        match = '<a href="' + page + '">' + mark(res.t, re) + '</a> <code>' + mark(res.id, re) + '</code>';
        details = mark(res.d, re) + (res.u ? '<span class="ig-url">' + mark(res.u, re) + '</span>' : '');
      } else if (e.kind === 'c') {
        var term = conceptTerm(row), href = res.r === 'CodeSystem' ? page + '#' + res.id + '-' + anchor(row[0]) : page;
        match = '<a href="' + href + '"><code>' + mark(row[0], re) + '</code></a> ' + mark(term, re);
        var others = [['', row[1]]];
        for (var j = 2; j + 1 < row.length; j += 2) others.push([row[j], row[j + 1]]);
        details = others.filter(function (d) { return d[1] && d[1] !== term; }).map(function (d) {
          return '<span>' + (d[0] ? '<b>' + esc(d[0]) + '</b> ' : '') + mark(d[1], re) + '</span>';
        }).join('');
      } else if (e.kind === 'm') {
        match = '<code>' + mark(row[0], re) + '</code> ' + mark(row[1], re) +
          (row[2] ? ' &#8594; <code>' + mark(row[2], re) + '</code> ' + mark(row[3], re) : '');
        details = esc(row[4]);
      } else {
        match = '<code>' + mark(row[0], re) + '</code>';
        details = esc(row[1]);
      }
      return '<tr><td><span class="ig-type">' + esc(res.r) + '</span></td><td>' + match + '</td><td class="ig-details">' + details +
        '</td><td><a href="' + page + '">' + esc(res.t) + '</a></td></tr>';
    });
    results.innerHTML = '<table class="grid ig-table"><thead><tr><th>' + esc(T.type) + '</th><th>' + esc(T.match) + '</th><th>' +
      esc(T.details) + '</th><th>' + esc(T.resource) + '</th></tr></thead><tbody>' + rows.join('') + '</tbody></table>';
  }

  function search() {
    var raw = input.value.trim();
    var params = new URLSearchParams(location.search);
    if (raw) params.set('q', raw); else params.delete('q');
    if (type) params.set('type', type); else params.delete('type');
    history.replaceState(null, '', location.pathname + (params.toString() ? '?' + params : ''));
    hits = [];
    if (!entries.length || !raw) { chips.innerHTML = ''; results.innerHTML = ''; status.textContent = state(ready); return; }
    var q = norm(raw), words = q.split(/\s+/);
    var word = new RegExp('(^|[\\s(,.;:/-])' + reEsc(q));
    var re = new RegExp('(' + words.slice().sort(function (a, b) { return b.length - a.length; }).map(loose).join('|') + ')', 'gi');
    var scored = [];
    for (var i = 0; i < entries.length; i++) {
      var e = entries[i], ok = true;
      for (var w = 0; w < words.length && ok; w++) ok = e.hay.indexOf(words[w]) >= 0;
      if (ok) scored.push({ e: e, s: score(e, q, word) });
    }
    hits = scored.sort(function (a, b) {
      return a.s - b.s || (a.e.kind === 'r' ? 0 : 1) - (b.e.kind === 'r' ? 0 : 1) || a.e.hay.length - b.e.hay.length ||
        a.e.res - b.e.res || a.e.seq - b.e.seq;
    }).map(function (x) { return x.e; });
    render(re);
  }

  chips.addEventListener('click', function (ev) {
    var b = ev.target.closest('button');
    if (!b) return;
    type = b.getAttribute('data-type');
    search();
  });
  var timer;
  input.addEventListener('input', function () { clearTimeout(timer); timer = setTimeout(search, 300); });
  var start = new URLSearchParams(location.search);
  input.value = start.get('q') || '';
  type = start.get('type') || '';
  load().then(search);
})();
