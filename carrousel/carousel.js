$(function() {

  $('.frames li:first').before($('.frames li:last'));
  $("li").animate({right: '33.333333%'}, .1);


  $('#next_frame').click(function(){
    console.log(this)
    $(".frame").animate({right: '33.333333%'});

      $('.frames li:last').after($('.frames li:first'));  

  }); //cierra 'next_frame'


  $('#previous_frame').click(function(){    
    console.log(this)
    $(".frame").animate({left: '33.333333%'});
    $('.frames li:first').before($('.frames li:last')); 
  
  });  // ciere de 'previous_frame'

});


