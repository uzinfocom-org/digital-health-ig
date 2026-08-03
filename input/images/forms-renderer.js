/*
 * Renders any Questionnaire published by this guide as a working form, using
 * NLM LHC-Forms.
 *
 * Nothing is embedded here. The available forms are discovered from the guide's
 * own ImplementationGuide resource, and the IG Publisher emits a flattened,
 * single-language copy of every resource into each language directory
 * (output/en, output/ru, output/uz) with the `translation` extensions resolved
 * into the base text. So the form list, the language switch and the sample
 * answers are all just fetches, and none of them can drift from what was built.
 *
 * This file lives in input/images/ (copied verbatim to output/ and to every
 * language directory) and is loaded from the forms page. It must stay an
 * external file: pagecontent is processed by Jekyll, which would interpret
 * {{ and {% inside inline script.
 */
(function () {
  'use strict';

  var IG = 'ImplementationGuide-uz.dhp.core.json';

  var LANGS = [
    { code: 'uz', label: "O'zbekcha" },
    { code: 'ru', label: 'Русский' },
    { code: 'en', label: 'English' }
  ];

  // Status messages and generated answers. The page around the form is translated by
  // the IG Publisher from input/translations/<lang>/pagecontent/forms.md, but whatever
  // this script writes has to be translated here.
  var STRINGS = {
    en: {
      loading: 'Loading the forms...',
      none: 'This guide publishes no questionnaires.',
      listFailed: 'Could not list the forms: ',
      loadFailed: 'Could not load the form: ',
      noLForms: 'LForms could not be loaded, so the interactive forms are unavailable.',
      sampleString: 'Sample answer',
      sampleText: 'Sample answer, filled in to preview the form.'
    },
    ru: {
      loading: 'Загрузка форм...',
      none: 'В этом руководстве нет опросников.',
      listFailed: 'Не удалось получить список форм: ',
      loadFailed: 'Не удалось загрузить форму: ',
      noLForms: 'Не удалось загрузить LForms, поэтому интерактивные формы недоступны.',
      sampleString: 'Примерный ответ',
      sampleText: 'Примерный ответ, заполненный для предпросмотра формы.'
    },
    uz: {
      loading: 'Formalar yuklanmoqda...',
      none: "Ushbu qo'llanmada so'rovnomalar chop etilmagan.",
      listFailed: "Formalar ro'yxatini olib bo'lmadi: ",
      loadFailed: "Formani yuklab bo'lmadi: ",
      noLForms: 'LForms yuklanmadi, shuning uchun interaktiv formalar mavjud emas.',
      sampleString: 'Namunaviy javob',
      sampleText: "Formani ko'rib chiqish uchun to'ldirilgan namunaviy javob."
    }
  };

  // Pages are published both at the root and under a language directory. From
  // output/ru/ the siblings are ../uz/, ../en/; from the root they are uz/, en/.
  var BASE = /\/(en|ru|uz)\/[^\/]*$/.test(location.pathname) ? '../' : '';

  var ids = [];              // questionnaire ids, in IG order
  var responseIds = [];      // QuestionnaireResponse example ids, in IG order
  var cache = {};            // "lang/id" -> Questionnaire
  var sampleCache = {};      // lang -> Promise of { questionnaire url -> { linkId -> value } }
  var currentLang = null;
  var currentId = null;
  var T = STRINGS.en;        // wording of the page this script is embedded in

  function el(id) { return document.getElementById(id); }

  function status(msg) {
    var s = el('form-status');
    if (s) { s.textContent = msg; s.style.display = msg ? '' : 'none'; }
  }

  function getJson(url) {
    return fetch(url).then(function (r) {
      if (!r.ok) throw new Error('HTTP ' + r.status + ' for ' + url);
      return r.json();
    });
  }

  function loadQuestionnaire(lang, id) {
    var key = lang + '/' + id;
    if (cache[key]) return Promise.resolve(cache[key]);
    return getJson(BASE + lang + '/Questionnaire-' + id + '.json')
      .then(function (q) { cache[key] = q; return q; });
  }

  // linkId|system|code -> display, for the answerOptions of one language.
  function optionDisplays(q) {
    var map = {};
    (function walk(items) {
      (items || []).forEach(function (it) {
        (it.answerOption || []).forEach(function (o) {
          var c = o.valueCoding;
          if (c) map[it.linkId + '|' + (c.system || '') + '|' + c.code] = c.display;
        });
        walk(it.item);
      });
    })(q.item);
    return map;
  }

  // A carried-over answer still holds the display text of the previous language,
  // which matches no option in the new one - the autocompleter then falls back to
  // its placeholder and the answer looks lost. Repoint each display via system+code.
  function retranslateAnswers(items, map) {
    (items || []).forEach(function (it) {
      (it.answer || []).forEach(function (a) {
        var c = a.valueCoding;
        if (!c) return;
        var d = map[it.linkId + '|' + (c.system || '') + '|' + c.code];
        if (d) c.display = d;
      });
      retranslateAnswers(it.item, map);
    });
  }

  // ---------------------------------------------------------------------------
  // Sample answers
  //
  // Filling a form in by hand just to see what it does is slow, and for a form that
  // calculates something it is the only way to see the calculation at all. The button
  // answers every answerable question, leaving the read-only ones to be computed, and
  // hands the result to LForms as Questionnaire.item.initial - which it already
  // understands, so no answer has to be mapped into the renderer's own model.
  // ---------------------------------------------------------------------------

  var MIN_EXT = 'http://hl7.org/fhir/StructureDefinition/minValue';
  var MAX_EXT = 'http://hl7.org/fhir/StructureDefinition/maxValue';
  var UNIT_EXT = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit';

  // Nothing in a Questionnaire says how large a numeric answer is meant to be, and a
  // preview built from arbitrary numbers is worthless - a BMI calculated from 1 kg and
  // 1 cm tells a reviewer nothing. So use the declared range where there is one, and
  // otherwise recognise the common clinical measures by linkId or by their UCUM unit.
  // Add a row here when a form asks for a measurement not listed yet.
  var NUMBERS = [
    { linkId: /height|stature/, unit: /^cm$/, value: 170 },
    { linkId: /weight/, unit: /^kg$/, value: 72 },
    { linkId: /systolic/, value: 130 },
    { linkId: /diastolic/, value: 82 },
    { linkId: /\bage\b/, unit: /^a$/, value: 52 },
    { linkId: /pulse|heart.?rate/, unit: /^\/min$/, value: 72 },
    { linkId: /temperature/, unit: /^Cel$/, value: 36.6 },
    { linkId: /glucose/, value: 5.4 },
    { linkId: /cholesterol/, value: 4.8 }
  ];
  var NUMBER_FALLBACK = 1;

  function extension(node, url) {
    return (node.extension || []).filter(function (e) { return e.url === url; })[0];
  }

  // The single value[x] of an answer, an answerOption or an initial - all three carry
  // it under the same names, so one shape can be copied straight into another.
  function valuePart(node) {
    var out = null;
    Object.keys(node || {}).forEach(function (k) {
      if (!out && k.indexOf('value') === 0) { out = {}; out[k] = node[k]; }
    });
    return out;
  }

  function boundNumber(it, url) {
    var e = extension(it, url);
    if (!e) return null;
    var v = e.valueDecimal !== undefined ? e.valueDecimal : e.valueInteger;
    return typeof v === 'number' ? v : null;
  }

  function unitCode(it) {
    var e = extension(it, UNIT_EXT);
    return (e && e.valueCoding && e.valueCoding.code) || '';
  }

  function sampleNumber(it) {
    var min = boundNumber(it, MIN_EXT);
    var max = boundNumber(it, MAX_EXT);
    if (min !== null && max !== null) return Math.round((min + max) / 2 * 10) / 10;
    if (min !== null) return min;
    if (max !== null) return max;

    var linkId = String(it.linkId || '').toLowerCase();
    var unit = unitCode(it);
    var hit = NUMBERS.filter(function (n) {
      return n.linkId.test(linkId) || (n.unit && unit && n.unit.test(unit));
    })[0];
    return hit ? hit.value : NUMBER_FALLBACK;
  }

  function today() { return new Date().toISOString().substring(0, 10); }

  // Made up from the item's own type and constraints, for the questions left uncovered
  // by the published examples. Items bound to an answerValueSet are left blank:
  // expanding a value set needs a terminology server, and this page works without one.
  function generatedValue(it, lang) {
    var s = STRINGS[lang] || STRINGS.en;
    var unit, quantity, text;
    switch (it.type) {
      case 'coding': case 'choice': case 'open-choice':
        return valuePart((it.answerOption || [])[0]);
      case 'boolean':
        return { valueBoolean: true };
      case 'integer':
        return { valueInteger: Math.round(sampleNumber(it)) };
      case 'decimal':
        return { valueDecimal: sampleNumber(it) };
      case 'quantity':
        unit = extension(it, UNIT_EXT);
        quantity = { value: sampleNumber(it) };
        if (unit && unit.valueCoding) {
          quantity.unit = unit.valueCoding.display || unit.valueCoding.code;
          quantity.system = unit.valueCoding.system;
          quantity.code = unit.valueCoding.code;
        }
        return { valueQuantity: quantity };
      case 'string': case 'text':
        text = it.type === 'text' ? s.sampleText : s.sampleString;
        if (it.maxLength > 0) text = text.substring(0, it.maxLength);
        return { valueString: text };
      case 'date':
        return { valueDate: today() };
      case 'dateTime':
        return { valueDateTime: today() + 'T09:00:00Z' };
      case 'time':
        return { valueTime: '09:00:00' };
      case 'url':
        return { valueUri: 'https://example.uz' };
      default:
        return null;   // group, display, attachment, reference: nothing to fill in
    }
  }

  // A published answer holds the display text of the language its example was written
  // in, and a display that matches no option leaves the autocompleter blank. Codes are
  // language-neutral, so take the coding from the form's own answerOption instead, and
  // drop an answer whose code the form no longer offers.
  function asOption(it, value) {
    if (!value || !value.valueCoding) return value;
    var c = value.valueCoding;
    var opt = (it.answerOption || []).filter(function (o) {
      return o.valueCoding && o.valueCoding.code === c.code &&
        (o.valueCoding.system || '') === (c.system || '');
    })[0];
    return opt ? valuePart(opt) : null;
  }

  // linkId -> first answer value, flattened out of the response's nesting, which is not
  // needed to look an answer up again because linkIds are unique within a form.
  function collectAnswers(items, out) {
    (items || []).forEach(function (it) {
      (it.answer || []).forEach(function (a, i) {
        if (i === 0 && valuePart(a)) out[it.linkId] = valuePart(a);
        collectAnswers(a.item, out);
      });
      collectAnswers(it.item, out);
    });
    return out;
  }

  // The QuestionnaireResponse examples are the best sample answers available: they are
  // authored, reviewed and translated alongside the forms themselves. Index the
  // completed ones by the questionnaire they answer.
  function loadSamples(lang) {
    if (!sampleCache[lang]) {
      sampleCache[lang] = Promise.all(responseIds.map(function (id) {
        return getJson(BASE + lang + '/QuestionnaireResponse-' + id + '.json')
          .catch(function () { return null; });
      })).then(function (responses) {
        var byUrl = {};
        responses.forEach(function (qr) {
          if (!qr || qr.status !== 'completed' || !qr.questionnaire) return;
          var url = qr.questionnaire.split('|')[0];
          if (!byUrl[url]) byUrl[url] = collectAnswers(qr.item, {});
        });
        return byUrl;
      });
    }
    return sampleCache[lang];
  }

  function withSampleAnswers(q, answers, lang) {
    var filled = JSON.parse(JSON.stringify(q));
    (function walk(items) {
      (items || []).forEach(function (it) {
        walk(it.item);
        // Read-only questions are the calculated ones - answering them would hide the
        // very result the preview is for.
        if (it.type === 'group' || it.type === 'display' || it.readOnly || it.initial) return;
        var value = asOption(it, answers[it.linkId]) || generatedValue(it, lang);
        if (value) it.initial = [value];
      });
    })(filled.item);
    return filled;
  }

  function autofill() {
    var q = cache[currentLang + '/' + currentId];
    if (!q) return;
    var button = el('form-autofill');
    if (button) button.disabled = true;
    loadSamples(currentLang)
      .then(function (byUrl) {
        LForms.Util.addFormToPage(
          withSampleAnswers(q, byUrl[q.url] || {}, currentLang),
          'form-target',
          { fhirVersion: 'R5' }
        );
      })
      .catch(function (e) { status(T.loadFailed + e.message); })
      .then(function () { if (button) button.disabled = false; });
  }

  // ---------------------------------------------------------------------------

  function show(q, lang, id, keepAnswers) {
    var qr = null;
    if (keepAnswers) {
      try { qr = LForms.Util.getFormFHIRData('QuestionnaireResponse', 'R5', 'form-target'); }
      catch (e) { qr = null; }
    }
    var done = false;
    if (qr) {
      // Round-trip the answers so switching language does not clear the form.
      try {
        retranslateAnswers(qr.item, optionDisplays(q));
        var fd = LForms.Util.convertFHIRQuestionnaireToLForms(q, 'R5');
        fd = LForms.Util.mergeFHIRDataIntoLForms('QuestionnaireResponse', qr, fd, 'R5');
        LForms.Util.addFormToPage(fd, 'form-target');
        done = true;
      } catch (e) { done = false; }
    }
    if (!done) LForms.Util.addFormToPage(q, 'form-target', { fhirVersion: 'R5' });

    currentLang = lang;
    currentId = id;
    // The guide's own rendering of the resource rather than a download, so the reader
    // lands on a page that links onwards to the profile and the terminology.
    var json = el('form-json');
    if (json) json.href = BASE + lang + '/Questionnaire-' + id + '.json.html';
    Array.prototype.forEach.call(document.querySelectorAll('#form-langs button'), function (b) {
      b.setAttribute('aria-pressed', String(b.getAttribute('data-lang') === lang));
    });
  }

  // Answers only carry over between languages of the same form, never between
  // different forms.
  function render(lang, id, keepAnswers) {
    return loadQuestionnaire(lang, id)
      .then(function (q) { show(q, lang, id, keepAnswers); status(''); })
      .catch(function (e) { status(T.loadFailed + e.message); });
  }

  // Label the picker with each questionnaire's own title in the current language.
  function relabelPicker(lang) {
    var picker = el('form-picker');
    return Promise.all(ids.map(function (id) {
      return loadQuestionnaire(lang, id)
        .then(function (q) { return q.title || q.name || id; })
        .catch(function () { return id; });
    })).then(function (titles) {
      Array.prototype.forEach.call(picker.options, function (opt, i) {
        opt.textContent = titles[i];
      });
    });
  }

  function buildControls(lang) {
    var picker = el('form-picker');
    ids.forEach(function (id) {
      var o = document.createElement('option');
      o.value = id;
      o.textContent = id;
      picker.appendChild(o);
    });
    picker.addEventListener('change', function () {
      render(currentLang, picker.value, false);
    });

    var box = el('form-langs');
    LANGS.forEach(function (l) {
      var b = document.createElement('button');
      b.type = 'button';
      b.textContent = l.label;
      b.setAttribute('data-lang', l.code);
      b.setAttribute('aria-pressed', 'false');
      b.addEventListener('click', function () {
        if (l.code === currentLang) return;
        var lang = l.code;
        render(lang, currentId, true).then(function () { relabelPicker(lang); });
      });
      box.appendChild(b);
    });

    el('form-autofill').addEventListener('click', autofill);
  }

  // The LForms bundle bootstraps asynchronously (Angular + zone.js), so wait for
  // LForms.Util.addFormToPage to exist before rendering.
  function whenReady(lang, n) {
    if (window.LForms && LForms.Util && LForms.Util.addFormToPage) {
      buildControls(lang);
      render(lang, ids[0], false).then(function () { relabelPicker(lang); });
      return;
    }
    if (n > 200) {
      status(T.noLForms);
      return;
    }
    setTimeout(function () { whenReady(lang, n + 1); }, 50);
  }

  function referencedIds(ig, type) {
    return ((ig.definition || {}).resource || [])
      .map(function (r) { return ((r.reference || {}).reference || ''); })
      .filter(function (ref) { return ref.indexOf(type + '/') === 0; })
      .map(function (ref) { return ref.substring(type.length + 1); });
  }

  function start() {
    // Start in the language of the IG page we are embedded in.
    var pageLang = document.documentElement.lang;
    var match = LANGS.filter(function (l) { return l.code === pageLang; })[0];
    var lang = match ? match.code : 'uz';
    T = STRINGS[lang] || STRINGS.en;

    status(T.loading);
    getJson(BASE + lang + '/' + IG)
      .then(function (ig) {
        ids = referencedIds(ig, 'Questionnaire');
        responseIds = referencedIds(ig, 'QuestionnaireResponse');
        if (!ids.length) { status(T.none); return; }
        whenReady(lang, 0);
      })
      .catch(function (e) { status(T.listFailed + e.message); });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', start);
  } else {
    start();
  }
})();
