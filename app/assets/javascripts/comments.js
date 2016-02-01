$(document).on('ready page:load', function() {
  $("#comment-form").bind("ajax:complete", function(event,xhr,status){
    $('.text').val('');
    var url = window.location.href;
    $("#comments").load(url + " #comments");
  });


  $( ".btn-login" ).click(function() {
    $( "#login" ).fadeIn( 300 );
    $( "#logup" ).fadeOut( 300 );
    return false;
  });
  $( ".btn-logup" ).click(function() {
    $( "#login" ).fadeOut( 300 );
    $( "#logup" ).fadeIn( 300 );
    return false;
  });

});
