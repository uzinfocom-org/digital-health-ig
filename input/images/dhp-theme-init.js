// Sets the light or dark theme before the page paints
(function () {
  var root = document.documentElement;
  var query = window.matchMedia ? window.matchMedia('(prefers-color-scheme: dark)') : null;
  var pref = 'system';
  function apply() {
    root.setAttribute('data-theme-pref', pref);
    root.setAttribute('data-theme', pref === 'system' ? (query ? (query.matches ? 'dark' : 'light') : 'light') : pref);
  }
  function set(value, fromStorage) {
    pref = value === 'light' || value === 'dark' ? value : 'system';
    if (!fromStorage) {
      try {
        if (pref === 'system') localStorage.removeItem('dhp-theme');
        else localStorage.setItem('dhp-theme', pref);
      } catch (e) {}
    }
    apply();
  }
  try { set(localStorage.getItem('dhp-theme'), true); } catch (e) { apply(); }
  if (query) {
    if (query.addEventListener) query.addEventListener('change', apply);
    else if (query.addListener) query.addListener(apply);
  }
  window.dhpTheme = { set: set, pref: function () { return pref; } };
})();
