'use strict';

{
  const open = document.getElementById('open-menu');
  const overlay = document.querySelector('.overlay');
  const menu_cover = document.querySelector('.menu-cover');
  const close = document.getElementById('close');
  
  open.addEventListener('click', () => {
    overlay.classList.add('show');
    menu_cover.classList.add('cover');
  });
  
  close.addEventListener('click', () => {
    overlay.classList.remove('show');
    menu_cover.classList.remove('cover');
  });
}
