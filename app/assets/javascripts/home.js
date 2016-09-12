# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
// A $( document ).ready() block.
$( document ).ready(function() {
      //$(".row:even").css("background-color","black").css("color","#DDD");
      $('#fullpage').fullpage({
        navigation: true,
        anchors: ['home', 'about', 'portfolio', 'contact'],
        lockAnchors:false,
        css3: true,
        responsiveHeight: 600,
        responsiveWidth: 768,
        scrollBar: true,
       }); //close full page
       
   var timedBounce = setInterval(function (){
     $(".chevron").toggleClass("animated bounce");
   },2000); // close timedbounce
   
    $("#fp-nav span").hover(function(){
    var hovered = $(this).parent().attr("href");
    $(this).append("<div class=\"temp\">" + hovered + "</div>");
    },function(){
    $(".temp").remove();
    });  