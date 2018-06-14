$(function(){
 $(window).scroll(function() {
 if($(this).scrollTop() >= 600) {
 $('nav.navbar_home').addClass('stickytop');
 }
 else{
 $('nav.navbar_home').removeClass('stickytop');
 }
 });
});