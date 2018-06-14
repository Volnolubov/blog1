$( document ).ready(function() {

  // hide spinner
  $(".spinner").hide();


  // show spinner on AJAX start
  $(document).ajaxStart(function(){
    $(".spinner").show();
  });

  // hide spinner on AJAX stop
  $(document).ajaxStop(function(){
    $(".spinner").hide();
  });

});

$(document).ajaxStop(function(){
  $(".spinner").delay(3000).hide(0);
});

$(document).on("page:fetch", function(){
  $(".spinner").show();
});

$(document).on("page:receive", function(){
  $(".spinner").hide();
});