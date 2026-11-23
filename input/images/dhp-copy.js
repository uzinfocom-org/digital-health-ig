(function () {
  var labels = {
    en: ['Copy', 'Copied'],
    ru: ['Копировать', 'Скопировано'],
    uz: ['Nusxa olish', 'Nusxa olindi']
  };
  var lang = (document.documentElement.lang || 'en').slice(0, 2);
  var text = labels[lang] || labels.en;
  var svg = '<svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">';
  var copyIcon = svg + '<rect x="9" y="9" width="12" height="12" rx="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg>';
  var doneIcon = svg + '<path d="M20 6 9 17l-5-5"/></svg>';

  function fallbackCopy(value) {
    var focused = document.activeElement;
    var area = document.createElement('textarea');
    area.value = value;
    area.setAttribute('readonly', '');
    area.style.position = 'fixed';
    area.style.opacity = '0';
    document.body.appendChild(area);
    area.select();
    var ok = document.execCommand('copy');
    document.body.removeChild(area);
    if (focused) focused.focus();
    return ok ? Promise.resolve() : Promise.reject();
  }

  function copy(value) {
    if (navigator.clipboard && window.isSecureContext) {
      return navigator.clipboard.writeText(value).catch(function () { return fallbackCopy(value); });
    }
    return fallbackCopy(value);
  }

  function codeText(pre) {
    var clone = pre.cloneNode(true);
    Array.prototype.forEach.call(clone.querySelectorAll('.targetLink'), function (link) {
      var next = link.nextSibling;
      if (next && next.nodeType === 3) next.nodeValue = next.nodeValue.replace(/^ /, '');
      link.parentNode.removeChild(link);
    });
    return clone.textContent.replace(/\n$/, '');
  }

  function init() {
    var blocks = document.querySelectorAll('#segment-content pre');
    if (!blocks.length) return;
    var status = document.createElement('span');
    status.className = 'dhp-copy-status';
    status.setAttribute('role', 'status');
    document.body.appendChild(status);
    Array.prototype.forEach.call(blocks, function (pre) {
      if (pre.closest('table') || !pre.textContent.trim()) return;
      var wrap = document.createElement('div');
      wrap.className = 'dhp-code';
      pre.parentNode.insertBefore(wrap, pre);
      wrap.appendChild(pre);

      var button = document.createElement('button');
      button.type = 'button';
      button.className = 'dhp-copy';
      button.title = text[0];
      button.setAttribute('aria-label', text[0]);
      button.innerHTML = copyIcon;
      button.addEventListener('click', function () {
        copy(codeText(pre)).then(function () {
          button.innerHTML = doneIcon;
          button.classList.add('done');
          button.title = text[1];
          button.setAttribute('aria-label', text[1]);
          status.textContent = '';
          setTimeout(function () { status.textContent = text[1]; }, 50);
          clearTimeout(button.timer);
          button.timer = setTimeout(function () {
            button.innerHTML = copyIcon;
            button.classList.remove('done');
            button.title = text[0];
            button.setAttribute('aria-label', text[0]);
          }, 1500);
        }, function () {
          var range = document.createRange();
          range.selectNodeContents(pre);
          var selection = window.getSelection();
          selection.removeAllRanges();
          selection.addRange(range);
        });
      });
      wrap.appendChild(button);
    });
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', init);
  else init();
})();
