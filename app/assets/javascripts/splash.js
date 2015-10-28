$(document).ready(function() {
  $('#bg_container').tubular({videoId: 'qREKP9oijWI', start: 20});
  $(".splash").on({
    mouseenter: function () {
      $('.btn').removeClass('hidden')
    },
    mouseleave: function () {
      $('.btn').addClass('hidden')
    }
  });
});
