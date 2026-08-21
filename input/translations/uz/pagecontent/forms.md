Ushbu qo'llanmada chop etilgan har bir [so'rovnomani](artifacts.html) shu yerda ishlaydigan
forma sifatida to'ldirish mumkin. Bu formani joriy etishdan oldin ko'rib chiqish va sinab
ko'rish uchun mo'ljallangan: savollarning matnini, javob variantlarini, savollar orasidagi
o'tish mantig'ini va - agar so'rovnoma biror narsani hisoblasa - hisoblash natijalarini
tekshiring.

<style>
#form-controls { display: flex; flex-wrap: wrap; gap: 12px; align-items: center; margin: 16px 0; }
#form-picker { font: inherit; font-size: 0.9rem; padding: 6px 10px; border: 1px solid #c3d0d4; border-radius: 6px; background: #fff; color: #2a3d45; max-width: 100%; }
#form-langs { display: flex; border: 1px solid #c3d0d4; border-radius: 6px; overflow: hidden; }
#form-langs button { border: 0; border-right: 1px solid #c3d0d4; background: #fff; color: #2a3d45; cursor: pointer; font: inherit; font-size: 0.9rem; padding: 6px 14px; }
#form-langs button:last-child { border-right: 0; }
#form-langs button:hover { background: #eaf1f3; }
#form-langs button[aria-pressed="true"] { background: #1d6f8b; color: #fff; }
#form-autofill, #form-json { display: inline-block; border: 1px solid #c3d0d4; border-radius: 6px; background: #fff; color: #2a3d45; cursor: pointer; font: inherit; font-size: 0.9rem; line-height: 1.4; padding: 6px 14px; text-decoration: none; }
#form-autofill:hover, #form-json:hover { background: #eaf1f3; color: #2a3d45; text-decoration: none; }
#form-autofill[disabled] { color: #97a8ae; cursor: default; }
#form-status { color: #5c7078; padding: 12px 0; }
#form-target { margin-top: 8px; }
</style>

<div id="form-controls">
  <select id="form-picker" aria-label="Forma"></select>
  <div id="form-langs" role="group" aria-label="Til"></div>
  <button id="form-autofill" type="button">Namunaviy javoblar bilan to'ldirish</button>
  <a id="form-json" href="artifacts.html" target="_blank" rel="noopener">JSON</a>
</div>

<div id="form-status">Formalar yuklanmoqda...</div>
<div id="form-target"></div>

<!-- NLM LHC-Forms 43.0.0, vendored into input/images/. The IG Publisher rejects
     off-site <link>/<script> references outright ("is illegal"), so these cannot be
     loaded from the NLM CDN. Order matters: zone.js, the web component, then the
     FHIR support bundle. -->
<link rel="stylesheet" href="lforms-styles.css">
<script src="lforms-zone.min.js"></script>
<script src="lforms-lhc-forms.js"></script>
<script src="lforms-fhir-all.min.js"></script>
<script src="forms-renderer.js"></script>
