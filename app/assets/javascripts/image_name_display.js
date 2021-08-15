'use strict';

  $('input').on('change', function () {
    var file = $(this).prop('files')[0];
    $('.not-selected').text(file.name);
  });