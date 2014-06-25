$.get('/', function(data){
  var response = data
  $(response).each(function(index, element){
    width = element[1] + 'px';
    $('.chart').append('<div></div>');
    $('div').width(width)
  })
});

