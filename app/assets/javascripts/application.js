// // This is a manifest file that'll be compiled into application.js, which will include all the files
// // listed below.
// //
// // Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// // vendor/assets/javascripts directory can be referenced here using a relative path.
// //
// // It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// // compiled file. JavaScript code in this file should be added after the last require_* statement.
// //
// // Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// // about supported directives.
// //
// //= require rails-ujs
// //= require jquery/dist/jquery.min
// //= require bootstrap/dist/js/bootstrap.min
// //= require turbolinks
// //= require_tree .

jQuery(function($) {'use strict';

//Responsive Nav

$('li.dropdown').find('.fa-angle-down').each(function(){

  $(this).on('click', function(){

    if( $(window).width() < 768 ) {

      $(this).parent().next().slideToggle();

    }

    return false;

  });

});

//Fit Vids

if( $('#video-container').length ) {

  $("#video-container").fitVids();

}

//Initiat WOW JS

new WOW().init();

// portfolio filter

$(window).load(function(){

  $('.main-slider').addClass('animate-in');

  $('.preloader').remove();

  //End Preloader

  if( $('.masonery_area').length ) {

    $('.masonery_area').masonry();//Masonry

  }

  var $portfolio_selectors = $('.portfolio-filter >li>a');

  if($portfolio_selectors.length) {

    var $portfolio = $('.portfolio-items');

    $portfolio.isotope({

      itemSelector : '.portfolio-item',

      layoutMode : 'fitRows'

    });

    $portfolio_selectors.on('click', function(){

      $portfolio_selectors.removeClass('active');

      $(this).addClass('active');

      var selector = $(this).attr('data-filter');

      $portfolio.isotope({ filter: selector });

      return false;

    });

  }

});

$('.timer').each(count);

function count(options) {

  var $this = $(this);

  options = $.extend({}, options || {}, $this.data('countToOptions') || {});

  $this.countTo(options);
}

// Search

$('.fa-search').on('click', function() {

  $('.field-toggle').fadeToggle(200);

});

// Contact form

var form = $('#main-contact-form');

form.submit(function(event){

  event.preventDefault();

  var form_status = $('<div class="form_status"></div>');

  $.ajax({

    url: $(this).attr('action'),

    beforeSend: function(){

      form.prepend( form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Email is sending...</p>').fadeIn() );

    }

  }).done(function(data){

    form_status.html('<p class="text-success">' + data.message + '</p>').delay(3000).fadeOut();

  });

});

// Progress Bar

$.each($('div.progress-bar'),function(){

  $(this).css('width', $(this).attr('data-transition')+'%');

});

if( $('#gmap').length ) {

  var map;

  map = new GMaps({

    el: '#gmap',

    lat: 43.04446,

    lng: -76.130791,

    scrollwheel:false,

    zoom: 16,

    zoomControl : false,

    panControl : false,

    streetViewControl : false,

    mapTypeControl: false,

    overviewMapControl: false,

    clickable: false

  });

  map.addMarker({

    lat: 43.04446,

    lng: -76.130791,

    animation: google.maps.Animation.DROP,

    verticalAlign: 'bottom',

    horizontalAlign: 'center',

    backgroundColor: '#3e8bff',

  });

}

});


// LIVE CHAT CODE


// $.ajax({
//   // The URL for the request
//   url: $(this).closest('form').attr('action'),
//   // The data to send (will be converted to a query string)
//   data: {
//     user_response: {
//       user_id: $("#user_response_user_id").val(),
//       question_id: $("#user_response_question_id").val(),
//       response: getResponse()
//     }
//   },
//   // Whether this is a POST or GET request
//   type: "POST",
//   // The type of data we expect back
//   dataType : "json",
//   headers: {
//     'X-CSRF-Token': $('[name="authenticity_token"]').val()
  // }
// })
// Code to run if the request succeeds (is done);
// The response is passed to the function
// .done(function( data ) {
//   $.ajax({
//     // The URL for the request
//     url: data.url,
//     // The data to send (will be converted to a query string)
//
//     // Whether this is a POST or GET request
//     type: "GET",
//     // The type of data we expect back
//     dataType : "HTML",
//   })
//   .done(function( data ) {
//     $(".user-response-form").fadeOut(function(){
//       $(".user-response-form").html(data)
//       $(".user-response-form").fadeIn('fast')
//     })
//   });
// });

function printMessage(message) {
$('#messages').append(message + "<br>");
}
$(function() {
var chatChannel;
var username;
$.post("/tokens", function(data) {
  username = data.username;
  var accessManager = new Twilio.AccessManager(data.token);
  var messagingClient = new Twilio.IPMessaging.Client(accessManager);

  messagingClient.getChannelByUniqueName('chat').then(function(channel) {
    if (channel) {
      chatChannel = channel;
      setupChannel();
    } else {
      messagingClient.createChannel({
        uniqueName: 'chat',
        friendlyName: 'Chat Channel' })
        .then(function(channel) {
          chatChannel = channel;
          setupChannel();
        });
      }
    });
  });

  function setupChannel() {
    chatChannel.join().then(function(channel) {
      printMessage(username + ' joined the chat.');
    });

    chatChannel.on('messageAdded', function(message) {
      printMessage(message.author + ": " + message.body);
    });
  }

  var $input = $('#chat-input');
  $input.on('keydown', function(e) {
    if (e.keyCode == 13) {
      chatChannel.sendMessage($input.val())
      $input.val('');
    }
  });
});

getResponse = function() {
  if($("#user_response_response").length) return $("#user_response_response").val();
  if($('input[type="radio"]:checked').length) return $('input[type="radio"]:checked').val();
}

$(document).on('turbolinks:load', function(){
    setTimeout(function(){
      $('#slide-in').toggleClass('show');
    }, 1000);
    setTimeout(function(){
      $('#slide-in-left').toggleClass('show');
    }, 1000);
});
