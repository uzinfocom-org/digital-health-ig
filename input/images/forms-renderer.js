/*
 * Renders any Questionnaire published by this guide as a working form, using
 * NLM LHC-Forms.
 *
 * Nothing is embedded here. The available forms are discovered from the guide's
 * own ImplementationGuide resource, and the IG Publisher emits a flattened,
 * single-language copy of every resource into each language directory
 * (output/en, output/ru, output/uz) with the `translation` extensions resolved
 * into the base text. So both the form list and the language switch are just
 * fetches, and neither can drift from what was built.
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

  var DOWNLOAD_LABEL = { uz: 'JSON (uz)', ru: 'JSON (ru)', en: 'JSON (en)' };

  // Pages are published both at the root and under a language directory. From
  // output/ru/ the siblings are ../uz/, ../en/; from the root they are uz/, en/.
  var BASE = /\/(en|ru|uz)\/[^\/]*$/.test(location.pathname) ? '../' : '';

  var ids = [];              // questionnaire ids, in IG order
  var cache = {};            // "lang/id" -> Questionnaire
  var currentLang = null;
  var currentId = null;

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
    var dl = el('form-download');
    if (dl) dl.textContent = DOWNLOAD_LABEL[lang];
    Array.prototype.forEach.call(document.querySelectorAll('#form-langs button'), function (b) {
      b.setAttribute('aria-pressed', String(b.getAttribute('data-lang') === lang));
    });
  }

  // Answers only carry over between languages of the same form, never between
  // different forms.
  function render(lang, id, keepAnswers) {
    return loadQuestionnaire(lang, id)
      .then(function (q) { show(q, lang, id, keepAnswers); status(''); })
      .catch(function (e) { status('Could not load the form: ' + e.message); });
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

    el('form-download').addEventListener('click', function () {
      var q = cache[currentLang + '/' + currentId];
      if (!q) return;
      var blob = new Blob([JSON.stringify(q, null, 2)], { type: 'application/json' });
      var url = URL.createObjectURL(blob);
      var a = document.createElement('a');
      a.href = url;
      a.download = 'Questionnaire-' + currentId + '-' + currentLang + '.json';
      a.click();
      URL.revokeObjectURL(url);
    });
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
      status('LForms could not be loaded, so the interactive forms are unavailable.');
      return;
    }
    setTimeout(function () { whenReady(lang, n + 1); }, 50);
  }

  function start() {
    // Start in the language of the IG page we are embedded in.
    var pageLang = document.documentElement.lang;
    var match = LANGS.filter(function (l) { return l.code === pageLang; })[0];
    var lang = match ? match.code : 'uz';

    status('Loading the forms...');
    getJson(BASE + lang + '/' + IG)
      .then(function (ig) {
        ids = ((ig.definition || {}).resource || [])
          .map(function (r) { return ((r.reference || {}).reference || ''); })
          .filter(function (ref) { return ref.indexOf('Questionnaire/') === 0; })
          .map(function (ref) { return ref.substring('Questionnaire/'.length); });
        if (!ids.length) { status('This guide publishes no questionnaires.'); return; }
        whenReady(lang, 0);
      })
      .catch(function (e) { status('Could not list the forms: ' + e.message); });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', start);
  } else {
    start();
  }
})();
