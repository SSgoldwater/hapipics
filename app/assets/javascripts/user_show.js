$(document).ready(function() {
  $(window).scroll(function() {
    if ($(document).scrollTop() > 10) {
      $('nav').addClass('shrink');
      $('.full-nav').addClass('hidden');
      $('.shrunk-nav').removeClass('hidden');
    } else {
      $('nav').removeClass('shrink');
      $('.full-nav').removeClass('hidden');
      $('.shrunk-nav').addClass('hidden');
    }
  });

  $('.comments h5').on('click', function() {
      $(this).siblings('.comments-contents').children('.comment').toggleClass('hidden');
      $(this).children('.glyphicon').toggleClass('glyphicon-triangle-bottom glyphicon-triangle-top');
  });
});
