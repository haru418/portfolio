'use strict';

{
  var search_open = document.getElementById('search-open');
  var search_close = document.getElementById('search-close');
  var overlay = document.querySelector('.overlay');
  var cover = document.getElementById('menu-cv');
  var search_form = document.getElementById('search-form');
  var mask = document.getElementById('mask');

  search_open.addEventListener('click', () => {
    cover.classList.remove('menu-cover');
    search_form.classList.remove('hidden');
    mask.classList.remove('hidden');
  });

  search_close.addEventListener('click', () => {
    overlay.classList.remove('show');
    cover.classList.remove('menu-cover');
    search_form.classList.add('hidden');
    mask.classList.add('hidden');
  });
}