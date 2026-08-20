/*
 * Interactive resource-flow diagram for the Components page: which FHIR
 * resources each component owns, and which of those resources plausibly
 * connect to another component. Plain lines are component-to-component
 * integration; arrows are a specific resource flowing between components.
 *
 * This file lives in input/images/ (copied verbatim to output/ and to every
 * language directory) and is loaded from the components page. It must stay
 * an external file: pagecontent is processed by Jekyll, which would
 * interpret {{ and {% inside inline script.
 *
 * Data mirrors input/images-source/resource-relationships.plantuml and the
 * component-to-component relationships documented in each component's
 * Technical Project (see components.md). Internally, some of these edges are
 * stated verbatim in a Technical Project and others are inferred from two
 * components sharing a FHIR resource type - but that provenance is an
 * editorial/audit detail, not something readers of this public page need to
 * weigh, so it is intentionally not tracked or displayed per edge here.
 */
(function () {
  var svgNS = 'http://www.w3.org/2000/svg';
  var MONO_FONT = "ui-monospace, 'SFMono-Regular', Menlo, Consolas, 'Liberation Mono', monospace";

  function el(tag, attrs) {
    var e = document.createElementNS(svgNS, tag);
    for (var k in attrs) e.setAttribute(k, attrs[k]);
    return e;
  }

  var TIERS = [
    ["MDM", "MSM"],
    ["CHR", "PHJM"],
    ["LAB", "REFERRALS", "REIMB", "SCREEN", "VACC"]
  ];

  var COMPONENTS = {
    MDM: { short: "MDM", label: "Master Data Management (MDM)", resources: [] },
    MSM: { short: "MSM", label: "Metadata and Security Management (MSM)", resources: [
      { name: "StructureDefinition" }, { name: "ValueSet" }, { name: "CodeSystem" }, { name: "CapabilityStatement" },
      { name: "Provenance", profiled: true }, { name: "AuditEvent", profiled: true }, { name: "Consent", profiled: true }
    ]},
    CHR: { short: "CHR", label: "Clinical Health Records (CHR)", resources: [
      { name: "Patient", profiled: true }, { name: "EpisodeOfCare", profiled: true }, { name: "Condition", profiled: true },
      { name: "Observation", profiled: true }, { name: "Procedure", profiled: true }, { name: "AllergyIntolerance", profiled: true },
      { name: "MedicationRequest" }
    ]},
    PHJM: { short: "PHJM", label: "Patient health journey management (PHJM)", resources: [
      { name: "EpisodeOfCare", profiled: true }, { name: "Encounter", profiled: true }, { name: "Condition", profiled: true },
      { name: "Observation", profiled: true }, { name: "CarePlan" }, { name: "Questionnaire", profiled: true },
      { name: "QuestionnaireResponse", profiled: true }
    ]},
    LAB: { short: "Laboratory", label: "Laboratory", resources: [
      { name: "Observation", profiled: true }, { name: "Specimen", profiled: true },
      { name: "DiagnosticReport", profiled: true }, { name: "ServiceRequest", profiled: true }
    ]},
    REFERRALS: { short: "Referrals", label: "Referrals", resources: [] },
    REIMB: { short: "Reimbursement", label: "Reimbursement", resources: [
      { name: "Claim", profiled: true }, { name: "ClaimResponse", profiled: true }, { name: "Encounter", profiled: true },
      { name: "Procedure", profiled: true }, { name: "MedicationDispense", profiled: true }, { name: "Condition", profiled: true },
      { name: "Observation", profiled: true }, { name: "CarePlan" }, { name: "Composition", profiled: true }
    ]},
    SCREEN: { short: "Screening Schedules", label: "Screening Schedules Management", resources: [
      { name: "Questionnaire", profiled: true }
    ]},
    VACC: { short: "Vaccination Mgmt", label: "Vaccination Management", resources: [] }
  };

  var EDGES = [
    { from: "CHR", to: "MDM", label: "full compatibility" },
    { from: "CHR", to: "MSM", label: "full compatibility" },
    { from: "MDM", to: "MSM", label: "metadata, security, clinical info" },
    { from: "PHJM", to: "CHR", label: "integration" },
    { from: "PHJM", to: "MSM", label: "integration" },
    { from: "PHJM", to: "MDM", label: "integration" },
    { from: "CHR.EpisodeOfCare", to: "PHJM.EpisodeOfCare", label: "shares this resource type" },
    { from: "CHR.Condition", to: "PHJM.Condition", label: "shares this resource type" },
    { from: "CHR.Observation", to: "PHJM.Observation", label: "shares this resource type" },
    { from: "LAB.Observation", to: "CHR.Observation", label: "lab results" },
    { from: "REFERRALS", to: "LAB.ServiceRequest", label: "referral request" },
    { from: "CHR.Procedure", to: "REIMB.Procedure", label: "shares this resource type" },
    { from: "CHR.Condition", to: "REIMB.Condition", label: "shares this resource type" },
    { from: "CHR.Observation", to: "REIMB.Observation", label: "shares this resource type" },
    { from: "PHJM.Encounter", to: "REIMB.Encounter", label: "shares this resource type" },
    { from: "PHJM.CarePlan", to: "REIMB.CarePlan", label: "shares this resource type" },
    { from: "PHJM.Questionnaire", to: "SCREEN.Questionnaire", label: "shares this resource type" }
  ];

  var BOX_W = 220, PILL_H = 26, PILL_GAP = 6, PILL_INSET = 10,
      TITLE_H = 30, PAD_TOP = 8, PAD_BOTTOM = 10, EMPTY_H = 46,
      TIER_GAP = 64, BOX_GAP = 26;

  var boxes = {}, pills = {};
  var curY = 30, minLeft = Infinity, maxRight = -Infinity;

  TIERS.forEach(function (tierIds) {
    var heights = tierIds.map(function (id) {
      var res = COMPONENTS[id].resources;
      if (!res.length) return EMPTY_H;
      return TITLE_H + PAD_TOP + res.length * PILL_H + (res.length - 1) * PILL_GAP + PAD_BOTTOM;
    });
    var rowH = Math.max.apply(null, heights);
    var rowW = tierIds.length * BOX_W + (tierIds.length - 1) * BOX_GAP;
    var curX = -rowW / 2;
    tierIds.forEach(function (id, i) {
      var h = heights[i];
      boxes[id] = { x: curX, y: curY, w: BOX_W, h: h, id: id };
      var res = COMPONENTS[id].resources;
      res.forEach(function (r, ri) {
        var py = curY + TITLE_H + PAD_TOP + ri * (PILL_H + PILL_GAP);
        pills[id + "::" + r.name] = { x: curX + PILL_INSET, y: py, w: BOX_W - 2 * PILL_INSET, h: PILL_H, name: r.name, profiled: !!r.profiled, compId: id };
      });
      if (curX < minLeft) minLeft = curX;
      if (curX + BOX_W > maxRight) maxRight = curX + BOX_W;
      curX += BOX_W + BOX_GAP;
    });
    curY += rowH + TIER_GAP;
  });
  var totalH = curY - TIER_GAP + 30;
  var totalW = maxRight - minLeft;

  function resolveEndpoint(str) {
    var parts = str.split(".");
    if (parts.length === 2) return { kind: "pill", id: parts[0] + "::" + parts[1], compId: parts[0] };
    return { kind: "box", id: parts[0], compId: parts[0] };
  }
  function rectOf(r) { return r.kind === "pill" ? pills[r.id] : boxes[r.id]; }

  EDGES.forEach(function (e) {
    e.fromR = resolveEndpoint(e.from);
    e.toR = resolveEndpoint(e.to);
    e.isBoxLevel = e.fromR.kind === "box" && e.toR.kind === "box";
  });

  function boundaryPoint(rect, other) {
    var acx = rect.x + rect.w / 2, acy = rect.y + rect.h / 2;
    var bcx = other.x + other.w / 2, bcy = other.y + other.h / 2;
    var dx = bcx - acx, dy = bcy - acy;
    if (Math.abs(dx) > Math.abs(dy)) return { x: dx > 0 ? rect.x + rect.w : rect.x, y: acy };
    return { x: acx, y: dy > 0 ? rect.y + rect.h : rect.y };
  }

  function curvePath(p1, p2) {
    var dx = p2.x - p1.x, dy = p2.y - p1.y;
    if (Math.abs(dx) > Math.abs(dy)) {
      var c = Math.max(40, Math.abs(dx) * 0.5), sx = dx >= 0 ? 1 : -1;
      return "M" + p1.x + "," + p1.y + " C" + (p1.x + sx * c) + "," + p1.y + " " + (p2.x - sx * c) + "," + p2.y + " " + p2.x + "," + p2.y;
    }
    var c2 = Math.max(40, Math.abs(dy) * 0.5), sy = dy >= 0 ? 1 : -1;
    return "M" + p1.x + "," + p1.y + " C" + p1.x + "," + (p1.y + sy * c2) + " " + p2.x + "," + (p2.y - sy * c2) + " " + p2.x + "," + p2.y;
  }

  var svg = document.getElementById('arch-svg');
  if (!svg) return;

  var defs = el('defs', {});
  var arrow = el('marker', { id: 'arch-arrow', viewBox: '0 0 10 10', refX: '8', refY: '5', markerWidth: '7', markerHeight: '7', orient: 'auto' });
  arrow.appendChild(el('path', { d: 'M0,0 L10,5 L0,10 z' }));
  defs.appendChild(arrow);
  svg.appendChild(defs);

  var viewport = el('g', { id: 'arch-viewport' });
  svg.appendChild(viewport);
  var edgeLayer = el('g', {});
  var nodeLayer = el('g', {});
  viewport.appendChild(edgeLayer);
  viewport.appendChild(nodeLayer);

  var edgeEls = [];
  EDGES.forEach(function (e) {
    var p1 = boundaryPoint(rectOf(e.fromR), rectOf(e.toR));
    var p2 = boundaryPoint(rectOf(e.toR), rectOf(e.fromR));
    var path = el('path', { d: curvePath(p1, p2), class: 'arch-edge', fill: 'none' });
    path.style.stroke = 'var(--blueprint)';
    path.setAttribute('stroke-width', e.isBoxLevel ? '2' : '1.5');
    if (!e.isBoxLevel) {
      path.setAttribute('marker-end', 'url(#arch-arrow)');
    }
    edgeLayer.appendChild(path);
    edgeEls.push({ el: path, edge: e });
  });

  var nodeEls = {};
  function makeNode(id, rect, isBox, data) {
    var g = el('g', { class: 'arch-node', 'data-id': id, tabindex: '0', role: 'button' });
    var r = el('rect', { x: rect.x, y: rect.y, width: rect.w, height: rect.h });
    if (isBox) {
      r.style.fill = 'var(--paper-raised)';
      r.style.stroke = 'var(--line)';
      r.setAttribute('stroke-width', '1.5');
    } else {
      r.style.fill = data.profiled ? 'var(--blueprint-soft)' : 'var(--pencil-soft)';
      r.style.stroke = 'none';
    }
    g.appendChild(r);

    var label = isBox ? COMPONENTS[id].short : data.name;
    var text = el('text', {
      x: isBox ? rect.x + 10 : rect.x + rect.w / 2,
      y: isBox ? rect.y + 19 : rect.y + rect.h / 2 + 4,
      'text-anchor': isBox ? 'start' : 'middle',
      'font-family': MONO_FONT,
      'font-size': isBox ? '12' : '10',
      'font-weight': isBox ? '600' : '500'
    });
    text.style.fill = isBox ? 'var(--ink)' : (data.profiled ? 'var(--blueprint)' : 'var(--ink-soft)');
    text.textContent = label;
    g.appendChild(text);

    g.setAttribute('aria-label', isBox ? COMPONENTS[id].label : (data.name + ' — ' + COMPONENTS[data.compId].label));
    nodeLayer.appendChild(g);
    nodeEls[id] = { el: g };
  }

  Object.keys(boxes).forEach(function (id) { makeNode(id, boxes[id], true, null); });
  Object.keys(pills).forEach(function (id) { makeNode(id, pills[id], false, pills[id]); });

  var pinnedId = null;
  var infoBody = document.getElementById('arch-info-body');

  var statEls = {
    components: document.getElementById('arch-stat-components'),
    resources: document.getElementById('arch-stat-resources'),
    relationships: document.getElementById('arch-stat-relationships')
  };
  if (statEls.components) statEls.components.textContent = Object.keys(boxes).length;
  if (statEls.resources) statEls.resources.textContent = Object.keys(pills).length;
  if (statEls.relationships) statEls.relationships.textContent = EDGES.length;

  var defaultInfoHTML = infoBody.innerHTML;

  function edgesFor(id, isBox) {
    return edgeEls.filter(function (rec) {
      var e = rec.edge;
      return isBox ? (e.fromR.compId === id || e.toR.compId === id) : (e.fromR.id === id || e.toR.id === id);
    });
  }

  function otherInfo(edge, id, isBox) {
    var fromMatches = isBox ? edge.fromR.compId === id : edge.fromR.id === id;
    var other = fromMatches ? edge.toR : edge.fromR;
    var dir = edge.isBoxLevel ? '↔' : (fromMatches ? '→' : '←');
    var label = other.kind === 'pill' ? (pills[other.id].name + ' · ' + COMPONENTS[other.compId].short) : COMPONENTS[other.compId].label;
    return { dir: dir, label: label };
  }

  function clearHighlight() {
    edgeEls.forEach(function (rec) { rec.el.classList.remove('dim'); });
    Object.keys(nodeEls).forEach(function (nid) {
      nodeEls[nid].el.classList.remove('dim', 'active');
    });
  }

  function setActive(id) {
    if (!id) { clearHighlight(); infoBody.innerHTML = defaultInfoHTML; return; }

    var isBox = !!boxes[id];
    var related = edgesFor(id, isBox);
    var activeNodeIds = {};
    activeNodeIds[id] = true;
    related.forEach(function (rec) { activeNodeIds[rec.edge.fromR.id] = true; activeNodeIds[rec.edge.toR.id] = true; });

    edgeEls.forEach(function (rec) {
      rec.el.classList.toggle('dim', related.indexOf(rec) === -1);
    });
    Object.keys(nodeEls).forEach(function (nid) {
      var isActive = nid === id || activeNodeIds[nid];
      nodeEls[nid].el.classList.toggle('dim', !isActive);
      nodeEls[nid].el.classList.toggle('active', nid === id);
    });

    var titleText = isBox ? COMPONENTS[id].short : pills[id].name;
    var subText = isBox ? COMPONENTS[id].label : COMPONENTS[pills[id].compId].label;
    var wrap = document.createElement('div');
    var t = document.createElement('p'); t.className = 'arch-info-title'; t.textContent = titleText;
    var s = document.createElement('p'); s.className = 'arch-info-sub'; s.textContent = subText;
    wrap.appendChild(t); wrap.appendChild(s);

    if (related.length === 0) {
      var hint = document.createElement('p');
      hint.className = 'arch-info-hint';
      hint.textContent = 'No stated or inferred relationships for this node.';
      wrap.appendChild(hint);
    } else {
      var ul = document.createElement('ul');
      ul.className = 'arch-rel-list';
      related.forEach(function (rec) {
        var e = rec.edge;
        var info = otherInfo(e, id, isBox);
        var li = document.createElement('li');
        li.className = 'arch-rel-item';
        var head = document.createElement('div');
        head.className = 'arch-rel-head';
        head.textContent = info.dir + ' ' + info.label;
        var desc = document.createElement('p');
        desc.className = 'arch-rel-desc';
        desc.textContent = e.label;
        li.appendChild(head);
        li.appendChild(desc);
        ul.appendChild(li);
      });
      wrap.appendChild(ul);
    }
    infoBody.innerHTML = '';
    while (wrap.firstChild) infoBody.appendChild(wrap.firstChild);
  }

  function setLegendActive(legendKind) {
    clearHighlight();
    edgeEls.forEach(function (rec) { rec.el.classList.add('dim'); });
    var matchCount = 0;
    Object.keys(nodeEls).forEach(function (nid) {
      if (boxes[nid]) { nodeEls[nid].el.classList.add('dim'); return; }
      var match = legendKind === 'profiled' ? pills[nid].profiled : !pills[nid].profiled;
      if (match) matchCount++;
      nodeEls[nid].el.classList.toggle('dim', !match);
      nodeEls[nid].el.classList.toggle('active', match);
    });

    var wrap = document.createElement('div');
    var t = document.createElement('p'); t.className = 'arch-info-title';
    t.textContent = legendKind === 'profiled' ? 'Profiled in this IG' : 'Named, not yet profiled';
    var s = document.createElement('p'); s.className = 'arch-info-sub';
    s.textContent = matchCount + (matchCount === 1 ? ' resource' : ' resources');
    wrap.appendChild(t); wrap.appendChild(s);
    infoBody.innerHTML = '';
    while (wrap.firstChild) infoBody.appendChild(wrap.firstChild);
  }

  Object.keys(nodeEls).forEach(function (id) {
    var node = nodeEls[id].el;
    node.addEventListener('pointerenter', function () { if (!pinnedId) setActive(id); });
    node.addEventListener('pointerleave', function () { if (!pinnedId) setActive(null); });
    node.addEventListener('focus', function () { if (!pinnedId) setActive(id); });
    node.addEventListener('blur', function () { if (!pinnedId) setActive(null); });
    node.addEventListener('click', function (ev) {
      ev.stopPropagation();
      if (dragMoved) return;
      pinnedId = (pinnedId === id) ? null : id;
      setActive(pinnedId);
    });
  });

  var legendEls = document.querySelectorAll('.arch-legend [data-legend]');
  Array.prototype.forEach.call(legendEls, function (legendEl) {
    var legendKind = legendEl.getAttribute('data-legend');
    legendEl.addEventListener('pointerenter', function () { if (!pinnedId) setLegendActive(legendKind); });
    legendEl.addEventListener('pointerleave', function () { if (!pinnedId) setActive(null); });
    legendEl.addEventListener('focus', function () { if (!pinnedId) setLegendActive(legendKind); });
    legendEl.addEventListener('blur', function () { if (!pinnedId) setActive(null); });
  });

  var canvas = document.getElementById('arch-canvas');
  var tx = 0, ty = 0, scale = 1, dragging = false, dragMoved = false, lastX = 0, lastY = 0;

  function applyTransform() { viewport.setAttribute('transform', 'translate(' + tx + ',' + ty + ') scale(' + scale + ')'); }

  function fitView() {
    var cw = canvas.clientWidth, ch = canvas.clientHeight, pad = 40;
    var s = Math.min((cw - pad * 2) / totalW, (ch - pad * 2) / totalH);
    s = Math.max(0.25, Math.min(s, 1.5));
    scale = s;
    tx = cw / 2 - ((minLeft + maxRight) / 2) * s;
    ty = ch / 2 - (totalH / 2) * s;
    applyTransform();
  }

  canvas.addEventListener('pointerdown', function (ev) {
    dragging = true; dragMoved = false; lastX = ev.clientX; lastY = ev.clientY;
    canvas.classList.add('dragging');
    canvas.setPointerCapture(ev.pointerId);
  });
  canvas.addEventListener('pointermove', function (ev) {
    if (!dragging) return;
    var dx = ev.clientX - lastX, dy = ev.clientY - lastY;
    if (Math.abs(dx) > 2 || Math.abs(dy) > 2) dragMoved = true;
    tx += dx; ty += dy; lastX = ev.clientX; lastY = ev.clientY;
    applyTransform();
  });
  canvas.addEventListener('pointerup', function (ev) {
    dragging = false; canvas.classList.remove('dragging');
    if (!dragMoved && (ev.target === canvas || ev.target === svg)) { pinnedId = null; setActive(null); }
  });
  canvas.addEventListener('pointerleave', function () { dragging = false; canvas.classList.remove('dragging'); });
  canvas.addEventListener('wheel', function (ev) {
    ev.preventDefault();
    var rect = canvas.getBoundingClientRect();
    var mx = ev.clientX - rect.left, my = ev.clientY - rect.top;
    var factor = ev.deltaY < 0 ? 1.1 : 0.9;
    var newScale = Math.max(0.25, Math.min(2.5, scale * factor));
    var contentX = (mx - tx) / scale, contentY = (my - ty) / scale;
    tx = mx - contentX * newScale; ty = my - contentY * newScale; scale = newScale;
    applyTransform();
  }, { passive: false });

  window.addEventListener('resize', fitView);
  fitView();
})();
