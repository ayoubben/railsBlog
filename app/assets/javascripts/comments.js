$(document).on('ready page:load', function() {
  $("#authentification").hide();
  $("#comment-form").bind("ajax:complete", function(event,xhr,status){
    $('.text').val('');
    var url = window.location.href;
    $("#comments").load(url + " #comments");
  });

  $( ".btn-login" ).click(function() {
    $( "#authentification" ).toggle( 300 );
    return false;
   });

});
