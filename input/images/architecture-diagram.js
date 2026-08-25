/*
 * Interactive resource-flow diagram for the Components page: which FHIR
 * resources each component owns, and which of those resources plausibly
 * connect to another component. Every component starts as a card showing how
 * many resources it holds; opening a card reveals them. While two components
 * are both closed, the resource arrows between them are drawn as one
 * component-to-component line.
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
    ["LAB", "REFERRALS", "REIMB", "SCREEN", "VACC"],
    ["BLOOD", "NURSING"]
  ];

  var COMPONENTS = {
    MDM: { short: "MDM", label: "Master Data Management (MDM)", resources: [
      { name: "Patient", profiled: true }, { name: "Organization", profiled: true },
      { name: "Practitioner", profiled: true }, { name: "PractitionerRole", profiled: true },
      { name: "HealthcareService", profiled: true }, { name: "Location", profiled: true }
    ]},
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
    REFERRALS: { short: "Referrals", label: "Referrals", resources: [
      { name: "ServiceRequest", profiled: true }, { name: "Task", profiled: true }
    ]},
    REIMB: { short: "Reimbursement", label: "Reimbursement", resources: [
      { name: "Claim", profiled: true }, { name: "ClaimResponse", profiled: true }, { name: "Encounter", profiled: true },
      { name: "Procedure", profiled: true }, { name: "MedicationDispense", profiled: true }, { name: "Condition", profiled: true },
      { name: "Observation", profiled: true }, { name: "CarePlan" }, { name: "Composition", profiled: true }
    ]},
    SCREEN: { short: "Screening Schedules", label: "Screening Schedules Management", resources: [
      { name: "Questionnaire", profiled: true }
    ]},
    VACC: { short: "Vaccination Mgmt", label: "Vaccination Management", resources: [
      { name: "Immunization", profiled: true }, { name: "ImmunizationRecommendation", profiled: true },
      { name: "PlanDefinition", profiled: true }, { name: "ActivityDefinition", profiled: true },
      { name: "AdverseEvent", profiled: true }, { name: "Encounter", profiled: true },
      { name: "Observation", profiled: true }
    ]},
    BLOOD: { short: "Blood Mgmt", label: "Blood Management", resources: [
      { name: "ServiceRequest", profiled: true }, { name: "SupplyRequest" },
      { name: "Procedure", profiled: true }, { name: "Observation", profiled: true },
      { name: "InventoryItem" }, { name: "InventoryReport" },
      { name: "PlanDefinition", profiled: true }, { name: "Group", profiled: true }
    ]},
    NURSING: { short: "Nursing", label: "Nursing", resources: [
      { name: "ServiceRequest", profiled: true }, { name: "Encounter", profiled: true },
      { name: "Observation", profiled: true }, { name: "Procedure", profiled: true },
      { name: "Condition", profiled: true }, { name: "Questionnaire", profiled: true },
      { name: "QuestionnaireResponse", profiled: true }
    ]}
  };

  var EDGES = [
    { from: "CHR", to: "MDM", kind: "fullCompat" },
    { from: "CHR", to: "MSM", kind: "fullCompat" },
    { from: "MDM", to: "MSM", kind: "metaSecClinical" },
    { from: "PHJM", to: "CHR", kind: "integration" },
    { from: "PHJM", to: "MSM", kind: "integration" },
    { from: "PHJM", to: "MDM", kind: "integration" },
    { from: "CHR.EpisodeOfCare", to: "PHJM.EpisodeOfCare", kind: "sharesType" },
    { from: "CHR.Condition", to: "PHJM.Condition", kind: "sharesType" },
    { from: "CHR.Observation", to: "PHJM.Observation", kind: "sharesType" },
    { from: "LAB.Observation", to: "CHR.Observation", kind: "labResults" },
    { from: "REFERRALS.ServiceRequest", to: "LAB.ServiceRequest", kind: "referralRequest" },
    { from: "REFERRALS.ServiceRequest", to: "NURSING.ServiceRequest", kind: "referralRequest" },
    { from: "CHR.Procedure", to: "REIMB.Procedure", kind: "sharesType" },
    { from: "CHR.Condition", to: "REIMB.Condition", kind: "sharesType" },
    { from: "CHR.Observation", to: "REIMB.Observation", kind: "sharesType" },
    { from: "PHJM.Encounter", to: "REIMB.Encounter", kind: "sharesType" },
    { from: "PHJM.CarePlan", to: "REIMB.CarePlan", kind: "sharesType" },
    { from: "PHJM.Questionnaire", to: "SCREEN.Questionnaire", kind: "sharesType" },
    { from: "NURSING.Encounter", to: "PHJM.Encounter", kind: "sharesType" },
    { from: "NURSING.Questionnaire", to: "PHJM.Questionnaire", kind: "sharesType" },
    { from: "NURSING.Condition", to: "CHR.Condition", kind: "sharesType" },
    { from: "NURSING.Observation", to: "CHR.Observation", kind: "sharesType" },
    { from: "NURSING.Procedure", to: "CHR.Procedure", kind: "sharesType" },
    { from: "LAB.Observation", to: "BLOOD.Observation", kind: "labResults" },
    { from: "BLOOD.Observation", to: "CHR.Observation", kind: "sharesType" },
    { from: "BLOOD.Procedure", to: "CHR.Procedure", kind: "sharesType" },
    { from: "MDM.Patient", to: "CHR.Patient", kind: "sharesType" },
    { from: "VACC.PlanDefinition", to: "BLOOD.PlanDefinition", kind: "sharesType" },
    { from: "VACC.Encounter", to: "PHJM.Encounter", kind: "sharesType" },
    { from: "VACC.Observation", to: "CHR.Observation", kind: "sharesType" }
  ];

  // Everything the diagram renders as prose, per page language. The publisher
  // sets <html lang="..."> and copies this file into every language directory,
  // so one file serves en/ru/uz, following the same STRINGS[lang] || STRINGS.en
  // convention as forms-renderer.js. Component wording matches the section
  // headings in each language's components.md so page and diagram agree. FHIR
  // resource type names (Patient, Observation ...) are never translated, and
  // English falls through to the short/label already on COMPONENTS above.
  var STRINGS = {
    en: {
      comp: {},
      edge: {
        fullCompat: "full compatibility",
        metaSecClinical: "metadata, security, clinical info",
        integration: "integration",
        sharesType: "shares this resource type",
        labResults: "lab results",
        referralRequest: "referral request"
      },
      noRelations: "No stated or inferred relationships for this node.",
      profiledTitle: "Profiled in this IG",
      unprofiledTitle: "Named, not yet profiled",
      resourceCount: function (n) { return n + (n === 1 ? " resource" : " resources"); }
    },
    ru: {
      comp: {
        MDM: { short: "MDM", label: "Управление основными данными (MDM)" },
        MSM: { short: "MSM", label: "Управление метаданными и безопасностью (MSM)" },
        CHR: { short: "CHR", label: "Электронные медицинские записи (CHR)" },
        PHJM: { short: "PHJM", label: "Управление клиническим маршрутом пациента (PHJM)" },
        LAB: { short: "Лаборатория", label: "Лаборатория" },
        REFERRALS: { short: "Направления", label: "Направления" },
        REIMB: { short: "Реимбурсация", label: "Реимбурсация" },
        SCREEN: { short: "Графики скрининга", label: "Управление графиками скрининга" },
        VACC: { short: "Вакцинация", label: "Управление вакцинацией" },
        BLOOD: { short: "Управление кровью", label: "Управление кровью" },
        NURSING: { short: "Сестринское дело", label: "Сестринское дело" }
      },
      edge: {
        fullCompat: "полная совместимость",
        metaSecClinical: "метаданные, безопасность, клиническая информация",
        integration: "интеграция",
        sharesType: "общий тип ресурса",
        labResults: "результаты лабораторных исследований",
        referralRequest: "запрос по направлению"
      },
      noRelations: "Для этого узла нет заявленных или предполагаемых связей.",
      profiledTitle: "Профилировано в этом руководстве",
      unprofiledTitle: "Упомянуто, но ещё не профилировано",
      // 1 ресурс / 2-4 ресурса / 5+ ресурсов, with the 11-14 exception.
      resourceCount: function (n) {
        var m10 = n % 10, m100 = n % 100;
        if (m10 === 1 && m100 !== 11) return n + " ресурс";
        if (m10 >= 2 && m10 <= 4 && (m100 < 12 || m100 > 14)) return n + " ресурса";
        return n + " ресурсов";
      }
    },
    uz: {
      comp: {
        MDM: { short: "MDM", label: "Asosiy ma'lumotlarni boshqarish (MDM)" },
        MSM: { short: "MSM", label: "Metama'lumotlar va xavfsizlikni boshqarish (MSM)" },
        CHR: { short: "CHR", label: "Elektron tibbiy yozuvlar (CHR)" },
        PHJM: { short: "PHJM", label: "Bemorning klinik marshrutini boshqarish (PHJM)" },
        LAB: { short: "Laboratoriya", label: "Laboratoriya" },
        REFERRALS: { short: "Yo'llanmalar", label: "Yo'llanmalar" },
        REIMB: { short: "Reimbursatsiya", label: "Reimbursatsiya" },
        SCREEN: { short: "Skrining jadvallari", label: "Skrining jadvallarini boshqarish" },
        VACC: { short: "Vaksinatsiya", label: "Vaksinatsiyani boshqarish" },
        BLOOD: { short: "Qon resurslari", label: "Qon resurslarini boshqarish" },
        NURSING: { short: "Hamshiralik ishi", label: "Hamshiralik ishi" }
      },
      edge: {
        fullCompat: "to'liq moslik",
        metaSecClinical: "metama'lumotlar, xavfsizlik, klinik ma'lumot",
        integration: "integratsiya",
        sharesType: "umumiy resurs turi",
        labResults: "laboratoriya natijalari",
        referralRequest: "yo'llanma so'rovi"
      },
      noRelations: "Bu tugun uchun belgilangan yoki taxmin qilingan aloqalar yo'q.",
      profiledTitle: "Ushbu qo'llanmada profillangan",
      unprofiledTitle: "Nomlangan, lekin hali profillanmagan",
      resourceCount: function (n) { return n + " ta resurs"; }
    }
  };

  var LANG = (document.documentElement.getAttribute("lang") || "en").slice(0, 2).toLowerCase();
  var T = STRINGS[LANG] || STRINGS.en;

  function compShort(id) {
    var c = T.comp && T.comp[id];
    return (c && c.short) || COMPONENTS[id].short;
  }
  function compLabel(id) {
    var c = T.comp && T.comp[id];
    return (c && c.label) || COMPONENTS[id].label;
  }
  function edgeLabel(e) {
    return (T.edge && T.edge[e.kind]) || STRINGS.en.edge[e.kind];
  }

  var BOX_W = 170, BOX_GAP = 26, TIER_GAP = 76, CARD_H = 58,
      PILL_H = 26, PILL_GAP = 6, PILL_INSET = 10,
      TITLE_H = 30, PAD_TOP = 8, PAD_BOTTOM = 10;

  var svg = document.getElementById('arch-svg');
  var canvas = document.getElementById('arch-canvas');
  var infoBody = document.getElementById('arch-info-body');
  if (!svg || !canvas || !infoBody) return;

  var totalResources = Object.keys(COMPONENTS).reduce(function (n, id) {
    return n + COMPONENTS[id].resources.length;
  }, 0);
  var statEls = {
    components: document.getElementById('arch-stat-components'),
    resources: document.getElementById('arch-stat-resources'),
    relationships: document.getElementById('arch-stat-relationships')
  };
  if (statEls.components) statEls.components.textContent = Object.keys(COMPONENTS).length;
  if (statEls.resources) statEls.resources.textContent = totalResources;
  if (statEls.relationships) statEls.relationships.textContent = EDGES.length;

  // Captured before the first render, while the panel still holds the markup
  // the page shipped with, and restored whenever nothing is selected.
  var defaultInfoHTML = infoBody.innerHTML;

  function resolveEndpoint(str) {
    var parts = str.split('.');
    if (parts.length === 2) return { kind: 'pill', id: parts[0] + '::' + parts[1], compId: parts[0] };
    return { kind: 'box', id: parts[0], compId: parts[0] };
  }

  EDGES.forEach(function (e) {
    e.fromR = resolveEndpoint(e.from);
    e.toR = resolveEndpoint(e.to);
    e.isBoxLevel = e.fromR.kind === 'box' && e.toR.kind === 'box';
  });

  // Which components currently show their resources, the pan/zoom carried
  // across re-renders, and the card to hold still while the rest re-flows.
  var expanded = {}, view = null, anchor = null;

  function boxHeight(id) {
    var n = COMPONENTS[id].resources.length;
    if (!expanded[id] || !n) return CARD_H;
    return TITLE_H + PAD_TOP + n * PILL_H + (n - 1) * PILL_GAP + PAD_BOTTOM;
  }

  function layout() {
    var boxes = {}, pills = {}, minLeft = Infinity, maxRight = -Infinity;
    var curY = 30;
    TIERS.forEach(function (tierIds) {
      var heights = tierIds.map(boxHeight);
      var rowH = Math.max.apply(null, heights);
      var rowW = tierIds.length * BOX_W + (tierIds.length - 1) * BOX_GAP;
      var curX = -rowW / 2;
      tierIds.forEach(function (id, i) {
        boxes[id] = { x: curX, y: curY, w: BOX_W, h: heights[i], id: id };
        if (expanded[id]) {
          COMPONENTS[id].resources.forEach(function (r, ri) {
            pills[id + '::' + r.name] = {
              x: curX + PILL_INSET,
              y: curY + TITLE_H + PAD_TOP + ri * (PILL_H + PILL_GAP),
              w: BOX_W - 2 * PILL_INSET, h: PILL_H,
              name: r.name, profiled: !!r.profiled, compId: id
            };
          });
        }
        if (curX < minLeft) minLeft = curX;
        if (curX + BOX_W > maxRight) maxRight = curX + BOX_W;
        curX += BOX_W + BOX_GAP;
      });
      curY += rowH + TIER_GAP;
    });
    return { boxes: boxes, pills: pills, minLeft: minLeft, maxRight: maxRight, height: curY - TIER_GAP + 30 };
  }

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
      return 'M' + p1.x + ',' + p1.y + ' C' + (p1.x + sx * c) + ',' + p1.y + ' ' + (p2.x - sx * c) + ',' + p2.y + ' ' + p2.x + ',' + p2.y;
    }
    var c2 = Math.max(40, Math.abs(dy) * 0.5), sy = dy >= 0 ? 1 : -1;
    return 'M' + p1.x + ',' + p1.y + ' C' + p1.x + ',' + (p1.y + sy * c2) + ' ' + p2.x + ',' + (p2.y - sy * c2) + ' ' + p2.x + ',' + p2.y;
  }

  function render() {
    var geom = layout();
    var boxes = geom.boxes, pills = geom.pills;
    var totalW = geom.maxRight - geom.minLeft, totalH = geom.height;
    var anyPills = false;
    for (var pk in pills) { anyPills = true; break; }

    while (svg.firstChild) svg.removeChild(svg.firstChild);
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

    // An endpoint whose component is closed falls back to the component box,
    // which is what merges several resource edges into one thicker line.
    function nodeIdFor(endpoint) {
      if (endpoint.kind === 'pill' && pills[endpoint.id]) return endpoint.id;
      return endpoint.compId;
    }
    function rectFor(endpoint) {
      var id = nodeIdFor(endpoint);
      return pills[id] || boxes[id];
    }

    var drawnByKey = {}, drawn = [];
    EDGES.forEach(function (e) {
      var aId = nodeIdFor(e.fromR), bId = nodeIdFor(e.toR);
      if (aId === bId) return;
      var merged = aId !== e.fromR.id || bId !== e.toR.id;
      var key = aId + '|' + bId + '|' + (merged ? 'box' : e.kind);
      if (drawnByKey[key]) { drawnByKey[key].edges.push(e); return; }
      var p1 = boundaryPoint(rectFor(e.fromR), rectFor(e.toR));
      var p2 = boundaryPoint(rectFor(e.toR), rectFor(e.fromR));
      var path = el('path', { d: curvePath(p1, p2), class: 'arch-edge', fill: 'none' });
      path.style.stroke = 'var(--blueprint)';
      var boxLevel = e.isBoxLevel || merged;
      path.setAttribute('stroke-width', boxLevel ? '2' : '1.5');
      if (!boxLevel) path.setAttribute('marker-end', 'url(#arch-arrow)');
      edgeLayer.appendChild(path);
      var rec = { el: path, edges: [e] };
      drawnByKey[key] = rec;
      drawn.push(rec);
    });

    var nodeEls = {};
    function makeNode(id, rect, isBox, data) {
      var openable = isBox && COMPONENTS[id].resources.length > 0;
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

      var text = el('text', {
        x: isBox ? rect.x + 10 : rect.x + rect.w / 2,
        y: isBox ? rect.y + 19 : rect.y + rect.h / 2 + 4,
        'text-anchor': isBox ? 'start' : 'middle',
        'font-family': MONO_FONT,
        'font-size': isBox ? '12' : '10',
        'font-weight': isBox ? '600' : '500'
      });
      text.style.fill = isBox ? 'var(--ink)' : (data.profiled ? 'var(--blueprint)' : 'var(--ink-soft)');
      text.textContent = isBox ? compShort(id) : data.name;
      g.appendChild(text);

      if (isBox && !expanded[id]) {
        var count = el('text', { x: rect.x + 10, y: rect.y + 40, 'font-family': MONO_FONT, 'font-size': '10' });
        count.style.fill = 'var(--ink-soft)';
        count.textContent = T.resourceCount(COMPONENTS[id].resources.length);
        g.appendChild(count);
      }
      if (openable) {
        var toggle = el('text', {
          x: rect.x + rect.w - 10, y: rect.y + (expanded[id] ? 19 : 40),
          'text-anchor': 'end', 'font-family': MONO_FONT, 'font-size': '13', 'font-weight': '600'
        });
        toggle.style.fill = 'var(--blueprint)';
        toggle.textContent = expanded[id] ? '−' : '+';
        g.appendChild(toggle);
      }

      var label = isBox ? compLabel(id) : (data.name + ' — ' + compLabel(data.compId));
      g.setAttribute('aria-label', label);
      if (openable) g.setAttribute('aria-expanded', expanded[id] ? 'true' : 'false');
      nodeLayer.appendChild(g);

      // A few resource type names, and some component names once translated,
      // are wider than the box holding them. Rather than size every box to the
      // longest string, condense just the labels that do not fit.
      var avail = isBox ? rect.w - 10 - (openable ? 20 : 10) : rect.w - 6;
      if (text.getComputedTextLength() > avail) {
        text.setAttribute('textLength', avail);
        text.setAttribute('lengthAdjust', 'spacingAndGlyphs');
      }

      nodeEls[id] = { el: g };
    }

    Object.keys(boxes).forEach(function (id) { makeNode(id, boxes[id], true, null); });
    Object.keys(pills).forEach(function (id) { makeNode(id, pills[id], false, pills[id]); });

    var pinnedId = null;

    function edgesTouching(id, isBox) {
      return EDGES.filter(function (e) {
        return isBox ? (e.fromR.compId === id || e.toR.compId === id) : (e.fromR.id === id || e.toR.id === id);
      });
    }

    function otherInfo(edge, id, isBox) {
      var fromMatches = isBox ? edge.fromR.compId === id : edge.fromR.id === id;
      var other = fromMatches ? edge.toR : edge.fromR;
      var dir = edge.isBoxLevel ? '↔' : (fromMatches ? '→' : '←');
      var label = other.kind === 'pill'
        ? (other.id.split('::')[1] + ' · ' + compShort(other.compId))
        : compLabel(other.compId);
      return { dir: dir, label: label };
    }

    function clearHighlight() {
      drawn.forEach(function (rec) { rec.el.classList.remove('dim'); });
      Object.keys(nodeEls).forEach(function (nid) { nodeEls[nid].el.classList.remove('dim', 'active'); });
    }

    function setActive(id) {
      if (!id) { clearHighlight(); infoBody.innerHTML = defaultInfoHTML; return; }

      var isBox = !!boxes[id];
      var related = edgesTouching(id, isBox);
      var activeNodeIds = {};
      activeNodeIds[id] = true;
      related.forEach(function (e) { activeNodeIds[nodeIdFor(e.fromR)] = true; activeNodeIds[nodeIdFor(e.toR)] = true; });

      drawn.forEach(function (rec) {
        var hit = rec.edges.some(function (e) { return related.indexOf(e) !== -1; });
        rec.el.classList.toggle('dim', !hit);
      });
      Object.keys(nodeEls).forEach(function (nid) {
        nodeEls[nid].el.classList.toggle('dim', !activeNodeIds[nid]);
        nodeEls[nid].el.classList.toggle('active', nid === id);
      });

      var wrap = document.createElement('div');
      var t = document.createElement('p'); t.className = 'arch-info-title';
      t.textContent = isBox ? compShort(id) : pills[id].name;
      var s = document.createElement('p'); s.className = 'arch-info-sub';
      s.textContent = isBox ? compLabel(id) : compLabel(pills[id].compId);
      wrap.appendChild(t); wrap.appendChild(s);

      if (related.length === 0) {
        var hint = document.createElement('p');
        hint.className = 'arch-info-hint';
        hint.textContent = T.noRelations;
        wrap.appendChild(hint);
      } else {
        var ul = document.createElement('ul');
        ul.className = 'arch-rel-list';
        related.forEach(function (e) {
          var info = otherInfo(e, id, isBox);
          var li = document.createElement('li');
          li.className = 'arch-rel-item';
          var head = document.createElement('div');
          head.className = 'arch-rel-head';
          head.textContent = info.dir + ' ' + info.label;
          var desc = document.createElement('p');
          desc.className = 'arch-rel-desc';
          desc.textContent = edgeLabel(e);
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
      drawn.forEach(function (rec) { rec.el.classList.add('dim'); });
      var matchCount = 0;
      Object.keys(COMPONENTS).forEach(function (cid) {
        COMPONENTS[cid].resources.forEach(function (r) {
          if (legendKind === 'profiled' ? !!r.profiled : !r.profiled) matchCount++;
        });
      });
      Object.keys(nodeEls).forEach(function (nid) {
        // With every component closed there is nothing to pick out, so the
        // boxes stay as they are rather than all dimming at once.
        if (boxes[nid]) { if (anyPills) nodeEls[nid].el.classList.add('dim'); return; }
        var match = legendKind === 'profiled' ? pills[nid].profiled : !pills[nid].profiled;
        nodeEls[nid].el.classList.toggle('dim', !match);
        nodeEls[nid].el.classList.toggle('active', match);
      });

      var wrap = document.createElement('div');
      var t = document.createElement('p'); t.className = 'arch-info-title';
      t.textContent = legendKind === 'profiled' ? T.profiledTitle : T.unprofiledTitle;
      var s = document.createElement('p'); s.className = 'arch-info-sub';
      s.textContent = T.resourceCount(matchCount);
      wrap.appendChild(t); wrap.appendChild(s);
      infoBody.innerHTML = '';
      while (wrap.firstChild) infoBody.appendChild(wrap.firstChild);
    }

    var dragMoved = false, pressedId = null;

    function activate(id) {
      if (boxes[id] && COMPONENTS[id].resources.length) {
        // Hold the card at the spot it already occupies on screen, so opening
        // it moves its neighbours rather than itself.
        anchor = { id: id, sx: tx + boxes[id].x * scale, sy: ty + boxes[id].y * scale };
        expanded[id] = !expanded[id];
        render();
        return;
      }
      pinnedId = (pinnedId === id) ? null : id;
      setActive(pinnedId);
    }

    Object.keys(nodeEls).forEach(function (id) {
      var node = nodeEls[id].el;
      node.addEventListener('pointerenter', function () { if (!pinnedId) setActive(id); });
      node.addEventListener('pointerleave', function () { if (!pinnedId) setActive(null); });
      node.addEventListener('focus', function () { if (!pinnedId) setActive(id); });
      node.addEventListener('blur', function () { if (!pinnedId) setActive(null); });
      node.addEventListener('pointerdown', function () { pressedId = id; });
      // Activation hangs off pointerup rather than click: while the canvas
      // holds a pointer capture for panning, the browser retargets the click
      // to the canvas and a click listener here would never run. Propagation
      // is deliberately not stopped - the canvas handler still needs this
      // event to end its drag, and it ignores events aimed at a node.
      node.addEventListener('pointerup', function () {
        if (dragMoved || pressedId !== id) return;
        pressedId = null;
        activate(id);
      });
      node.addEventListener('keydown', function (ev) {
        if (ev.key !== 'Enter' && ev.key !== ' ' && ev.key !== 'Spacebar') return;
        ev.preventDefault();
        activate(id);
      });
    });

    var legendEls = document.querySelectorAll('.arch-legend [data-legend]');
    Array.prototype.forEach.call(legendEls, function (legendEl) {
      var legendKind = legendEl.getAttribute('data-legend');
      legendEl.onpointerenter = function () { if (!pinnedId) setLegendActive(legendKind); };
      legendEl.onpointerleave = function () { if (!pinnedId) setActive(null); };
      legendEl.onfocus = function () { if (!pinnedId) setLegendActive(legendKind); };
      legendEl.onblur = function () { if (!pinnedId) setActive(null); };
    });

    var tx = 0, ty = 0, scale = 1, dragging = false, lastX = 0, lastY = 0, startX = 0, startY = 0;

    function applyTransform() { viewport.setAttribute('transform', 'translate(' + tx + ',' + ty + ') scale(' + scale + ')'); }

    function fitView() {
      var cw = canvas.clientWidth, ch = canvas.clientHeight, pad = 40;
      var s = Math.min((cw - pad * 2) / totalW, (ch - pad * 2) / totalH);
      s = Math.max(0.25, Math.min(s, 1.5));
      scale = s;
      tx = cw / 2 - ((geom.minLeft + geom.maxRight) / 2) * s;
      ty = ch / 2 - (totalH / 2) * s;
      applyTransform();
    }

    // Pointer capture is taken only once a drag is really under way. Capturing
    // it on pointerdown would retarget the click, and nothing in the diagram
    // would be clickable at all.
    canvas.onpointerdown = function (ev) {
      dragging = true; dragMoved = false;
      startX = lastX = ev.clientX; startY = lastY = ev.clientY;
      canvas.classList.add('dragging');
    };
    canvas.onpointermove = function (ev) {
      if (!dragging) return;
      var dx = ev.clientX - lastX, dy = ev.clientY - lastY;
      if (!dragMoved && (Math.abs(ev.clientX - startX) > 3 || Math.abs(ev.clientY - startY) > 3)) {
        dragMoved = true;
        try { canvas.setPointerCapture(ev.pointerId); } catch (err) { /* capture is a nicety; panning works without it */ }
      }
      tx += dx; ty += dy; lastX = ev.clientX; lastY = ev.clientY;
      applyTransform();
    };
    canvas.onpointerup = function (ev) {
      dragging = false;
      canvas.classList.remove('dragging');
      if (canvas.hasPointerCapture(ev.pointerId)) canvas.releasePointerCapture(ev.pointerId);
      if (!dragMoved && (ev.target === canvas || ev.target === svg)) { pinnedId = null; setActive(null); }
      pressedId = null;
    };
    canvas.onpointerleave = function () { dragging = false; canvas.classList.remove('dragging'); };
    canvas.onwheel = function (ev) {
      ev.preventDefault();
      var rect = canvas.getBoundingClientRect();
      var mx = ev.clientX - rect.left, my = ev.clientY - rect.top;
      var factor = ev.deltaY < 0 ? 1.1 : 0.9;
      var newScale = Math.max(0.25, Math.min(2.5, scale * factor));
      tx = mx - ((mx - tx) / scale) * newScale;
      ty = my - ((my - ty) / scale) * newScale;
      scale = newScale;
      applyTransform();
    };

    if (view) {
      // Opening a card re-renders, and re-fitting there would shrink the very
      // detail just opened, so only the first render fits the whole drawing.
      tx = view.tx; ty = view.ty; scale = view.scale;
      if (anchor && boxes[anchor.id]) {
        var ab = boxes[anchor.id];
        tx = anchor.sx - ab.x * scale;
        ty = anchor.sy - ab.y * scale;
        var pad = 12, cw = canvas.clientWidth, ch = canvas.clientHeight;
        var top = ty + ab.y * scale, bottom = top + ab.h * scale;
        if (bottom > ch - pad && ab.h * scale <= ch - 2 * pad) ty -= bottom - (ch - pad);
        else if (top < pad) ty += pad - top;
        var left = tx + ab.x * scale, right = left + ab.w * scale;
        if (right > cw - pad && ab.w * scale <= cw - 2 * pad) tx -= right - (cw - pad);
        else if (left < pad) tx += pad - left;
      }
      applyTransform();
    } else {
      fitView();
    }
    anchor = null;
    view = { get tx() { return tx; }, get ty() { return ty; }, get scale() { return scale; } };
    currentFit = fitView;
  }

  // Resizing re-fits the whole drawing, using whatever the latest render left.
  var currentFit = null;
  window.addEventListener('resize', function () { if (currentFit) currentFit(); });

  render();
})();
