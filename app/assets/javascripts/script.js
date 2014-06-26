(function(){
  var routeData = function(){
    if ($(this).find('.stop-info').hasClass('hide')){
      $(this).find('.stop-info').removeClass('hide');
      $(this).find('.stop-info').slideDown();
    } else {
      $(this).find('.stop-info').addClass('hide')
      $(this).find('.stop-info').slideUp();
    }
  }

  $('.stop-info').hide();
  $('.bar-wrapper').on('click', routeData);

})();

