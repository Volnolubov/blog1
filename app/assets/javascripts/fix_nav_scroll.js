$(function(){
 $(window).scroll(function() {
 if($(this).scrollTop() >= 70) {
 $('nav.navbar').addClass('stickytop');
 }
 else{
 $('nav.navbar').removeClass('stickytop');
 }
 });
});