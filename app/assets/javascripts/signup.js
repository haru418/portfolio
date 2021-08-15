'use strict';

{
  var signup = document.getElementById('signup');
  var cover = document.querySelector('.menu-cover');
  var signup_new = document.querySelector('.users-new-main');
  var signup_close = document.getElementById('signup-close');

  signup.addEventListener('click', () => {
    cover.classList.add('signup-cover');
    signup_new.classList.add('signup-form');
  });

  signup_close.addEventListener('click', () => {
    cover.classList.remove('signup-cover');
    signup_new.classList.remove('signup-form');
  });
}