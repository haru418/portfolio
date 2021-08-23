'use strict';

{
  const open = document.getElementById('open-menu');
  const overlay = document.querySelector('.overlay');
  const menu_cover = document.querySelector('.menu-cover');
  const close = document.getElementById('close');
  var search_form = document.getElementById('search-form');
  var mask = document.getElementById('mask');
  
  open.addEventListener('click', () => {
    overlay.classList.add('show');
    menu_cover.classList.add('cover');
  });
  
  close.addEventListener('click', () => {
    overlay.classList.remove('show');
    menu_cover.classList.remove('cover');
    search_form.classList.add('hidden');
    mask.classList.add('hidden');
  });
}
