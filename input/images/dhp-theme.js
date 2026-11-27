// Light / Dark / System theme menu in the page header
(function () {
  var box = document.getElementById('dhp-theme');
  if (!box || !window.dhpTheme) return;
  var trigger = box.querySelector('.dhp-theme-trigger');
  var menu = document.getElementById('dhp-theme-menu');
  var options = Array.prototype.slice.call(menu.querySelectorAll('[data-theme-option]'));

  function sync() {
    var pref = window.dhpTheme.pref();
    options.forEach(function (option) {
      var selected = option.getAttribute('data-theme-option') === pref;
      option.setAttribute('aria-pressed', selected ? 'true' : 'false');
      if (selected) trigger.setAttribute('aria-label', trigger.getAttribute('data-label') + ': ' + option.textContent.trim());
    });
  }

  function isOpen() { return !menu.hidden; }

  function open() {
    sync();
    menu.hidden = false;
    trigger.setAttribute('aria-expanded', 'true');
    var current = menu.querySelector('[aria-pressed="true"]') || options[0];
    current.focus();
  }

  function close(returnFocus) {
    if (!isOpen()) return;
    menu.hidden = true;
    trigger.setAttribute('aria-expanded', 'false');
    if (returnFocus) trigger.focus();
  }

  trigger.addEventListener('click', function () {
    if (isOpen()) close(false); else open();
  });

  options.forEach(function (option) {
    option.addEventListener('click', function () {
      window.dhpTheme.set(option.getAttribute('data-theme-option'));
      sync();
      close(true);
    });
  });

  box.addEventListener('keydown', function (event) {
    if (event.key === 'Escape' && isOpen()) {
      event.preventDefault();
      close(true);
      return;
    }
    var index = options.indexOf(document.activeElement);
    if (index < 0) return;
    var next = null;
    if (event.key === 'ArrowDown') next = options[(index + 1) % options.length];
    else if (event.key === 'ArrowUp') next = options[(index - 1 + options.length) % options.length];
    else if (event.key === 'Home') next = options[0];
    else if (event.key === 'End') next = options[options.length - 1];
    if (next) {
      event.preventDefault();
      next.focus();
    }
  });

  document.addEventListener('click', function (event) {
    if (!box.contains(event.target)) close(false);
  });
  box.addEventListener('focusout', function (event) {
    if (event.relatedTarget && !box.contains(event.relatedTarget)) close(false);
  });

  // Keep other open tabs in step
  window.addEventListener('storage', function (event) {
    if (event.key === 'dhp-theme') {
      window.dhpTheme.set(event.newValue, true);
      sync();
    }
  });

  sync();
  box.hidden = false;
})();
