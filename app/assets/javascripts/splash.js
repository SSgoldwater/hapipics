$(document).ready(function() {
  $('#bg_container').tubular({videoId: '-LYKeVRV_yQ', start: 11});
  $(".splash").on({
    mouseenter: function () {
      $('.btn').removeClass('hidden')
    },
    mouseleave: function () {
      $('.btn').addClass('hidden')
    }
  });
});
