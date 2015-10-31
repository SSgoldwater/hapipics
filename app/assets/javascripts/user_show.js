$(document).ready(function() {
  $(window).scroll(function() {
    if ($(document).scrollTop() > 10) {
      $('nav').addClass('shrink');
      $('.full-nav').addClass('hidden');
      $('.shrunk-nav').removeClass('hidden');
      $('.current').css("top", "70px");
      $('.media').css("top", "120px");
      $('.hapi-tag-feed').css("top", "160px");
    } else {
      $('nav').removeClass('shrink');
      $('.full-nav').removeClass('hidden');
      $('.shrunk-nav').addClass('hidden');
      $('.current').css("top", "180px");
      $('.media').css("top", "230px");
      $('.hapi-tag-feed').css("top", "270px");
    }
  });

  $('.comments h5').on('click', function() {
      $(this).siblings('.comments-contents').children('.comment').toggleClass('hidden');
      $(this).children('.glyphicon').toggleClass('glyphicon-triangle-bottom glyphicon-triangle-top');
  });
  
  $('.feed-selector.current').on('click', function() {
    $('.feed-selector').removeClass('active');
    $('.feed').addClass('hidden');
    $('.user-current-feed').removeClass('hidden');
    $(this).addClass('active');
  });

  $('.feed-selector.media').on('click', function() {
    $('.feed-selector').removeClass('active');
    $('.feed').addClass('hidden');
    $('.user-media').removeClass('hidden');
    $(this).addClass('active');
  });

  $('.feed-selector.hapi-tag-feed').on('click', function() {
    $('.feed-selector').removeClass('active');
    $('.feed').addClass('hidden');
    $('.hapi-feed').removeClass('hidden');
    $(this).addClass('active');
  });

});
