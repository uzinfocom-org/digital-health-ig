Ushbu qo'llanmadagi resurslar, kodlar, atamalar va moslashtirishlarni qidirish.

<style>
#ig-query { width: 100%; font-size: 15px; padding: 6px 10px; border: 1px solid #c3d0d4; border-radius: 6px; margin: 16px 0 8px; }
#ig-types { display: flex; flex-wrap: wrap; gap: 6px; margin: 4px 0; }
#ig-types button { border: 1px solid #c3d0d4; border-radius: 14px; background: #fff; color: #2a3d45; cursor: pointer; font-size: 13px; padding: 2px 10px; }
#ig-types button span { color: #5c7078; }
#ig-types button[aria-pressed="true"] { background: #6a3d9a; border-color: #6a3d9a; color: #fff; }
#ig-types button[aria-pressed="true"] span { color: #e6dcf0; }
#ig-status-line { color: #5c7078; padding: 6px 0; }
.ig-table td { vertical-align: top; }
.ig-type { font-size: 0.85em; color: #5c7078; }
.ig-details span { display: block; color: #5c7078; font-size: 0.9em; }
.ig-url { word-break: break-all; }
.ig-table mark { background: #fff3a8; padding: 0; }
</style>

<input id="ig-query" type="search" placeholder="Kod, atama yoki resurs, masalan 1111, gipertenziya yoki bemor" aria-label="Kod, atama yoki resurs, masalan 1111, gipertenziya yoki bemor" autofocus="autofocus"/>
<div id="ig-types" role="group" aria-label="Resurs turi"></div>
<div id="ig-status-line"></div>
<div id="ig-results"></div>

<script src="ig-search.js"></script>
