// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery/dist/jquery.min
//= require bootstrap/dist/js/bootstrap
//= require turbolinks
//= require_tree .
$( document ).ready(function(){
  $(document).on('click', '.submit', function(e){
    e.preventDefault();
    // see what is this

    $.ajax({
      // The URL for the request
      url: $(this).closest('form').attr('action'),
      // The data to send (will be converted to a query string)
      data: {
        user_response: {
          user_id: $("#user_response_user_id").val(),
          question_id: $("#user_response_question_id").val(),
          response: $("#user_response_response").val()
        }
      },
      // Whether this is a POST or GET request
      type: "POST",
      // The type of data we expect back
      dataType : "json",
      headers: {
        'X-CSRF-Token': $('[name="authenticity_token"]').val()
      }
    })
    // Code to run if the request succeeds (is done);
    // The response is passed to the function
    .done(function( data ) {
      $.ajax({
        // The URL for the request
        url: data.url,
        // The data to send (will be converted to a query string)

        // Whether this is a POST or GET request
        type: "GET",
        // The type of data we expect back
        dataType : "HTML",
      })
      .done(function( data ) {
        $(".user-response-form").fadeOut(function(){
          $(".user-response-form").html(data)
          $(".user-response-form").fadeIn('fast')
        })
      });
    });
  });
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
