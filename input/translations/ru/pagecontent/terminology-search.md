Поиск кодов и терминов сразу во всех [кодовых системах](artifacts.html) этого руководства - по коду, по отображаемому названию или по обозначению на русском, узбекском или английском языке. Прежде чем добавлять новую кодовую систему или концепт, проверьте здесь, что такого ещё нет.

<style>
#cs-controls { display: flex; flex-wrap: wrap; gap: 10px; margin: 16px 0 8px; }
#cs-query { flex: 1 1 320px; font-size: 15px; padding: 6px 10px; border: 1px solid #c3d0d4; border-radius: 6px; }
#cs-system { flex: 0 1 320px; font-size: 14px; padding: 6px 10px; border: 1px solid #c3d0d4; border-radius: 6px; max-width: 100%; }
#cs-status { color: #5c7078; padding: 6px 0; }
.cs-table td { vertical-align: top; }
.cs-other span { display: block; color: #5c7078; font-size: 0.9em; }
.cs-table mark { background: #fff3a8; padding: 0; }
</style>

<div id="cs-controls">
  <input id="cs-query" type="search" placeholder="Код или термин, например 1111 или гипертензия" aria-label="Код или термин" autofocus="autofocus"/>
  <select id="cs-system" aria-label="Кодовая система"></select>
</div>
<div id="cs-status"></div>
<div id="cs-results"></div>

<script src="concept-search.js"></script>
