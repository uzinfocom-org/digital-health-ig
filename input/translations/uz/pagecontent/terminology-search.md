Ushbu qo'llanmadagi barcha [kod tizimlari](artifacts.html) bo'yicha kodlar va atamalarni bir vaqtda qidirish - kod, ko'rsatiladigan nom yoki rus, o'zbek yoki ingliz tilidagi belgilanish bo'yicha. Yangi kod tizimi yoki tushuncha qo'shishdan oldin, u allaqachon mavjud emasligini shu yerda tekshiring.

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
  <input id="cs-query" type="search" placeholder="Kod yoki atama, masalan 1111 yoki gipertenziya" aria-label="Kod yoki atama" autofocus="autofocus"/>
  <select id="cs-system" aria-label="Kod tizimi"></select>
</div>
<div id="cs-status"></div>
<div id="cs-results"></div>

<script src="concept-search.js"></script>
