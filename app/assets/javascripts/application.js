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
// //= require bootstrap/dist/js/bootstrap
// //= require turbolinks
// //= require_tree .
//
//
// $( document ).ready(function(){
//   $(document).on('click', '.brand-new', function(e){
//     e.preventDefault();
//     // see what is this
//
//     $.ajax({
//       // The URL for the request
//       url: $(this).closest('form').attr('action'),
//       // The data to send (will be converted to a query string)
//       data: {
//         user_response: {
//           user_id: $("#user_response_user_id").val(),
//           question_id: $("#user_response_question_id").val(),
//           response: getResponse()
//         }
//       },
//       // Whether this is a POST or GET request
//       type: "POST",
//       // The type of data we expect back
//       dataType : "json",
//       headers: {
//         'X-CSRF-Token': $('[name="authenticity_token"]').val()
//       }
//     })
//     // Code to run if the request succeeds (is done);
//     // The response is passed to the function
//     .done(function( data ) {
//       $.ajax({
//         // The URL for the request
//         url: data.url,
//         // The data to send (will be converted to a query string)
//
//         // Whether this is a POST or GET request
//         type: "GET",
//         // The type of data we expect back
//         dataType : "HTML",
//       })
//       .done(function( data ) {
//         $(".user-response-form").fadeOut(function(){
//           $(".user-response-form").html(data)
//           $(".user-response-form").fadeIn('fast')
//         })
//       });
//     });
//   });
//
//
//
//   $(document).on('click', '.submit', function(e){
//     e.preventDefault();
//     // see what is this
//
//     $.ajax({
//       // The URL for the request
//       url: $(this).closest('form').attr('action'),
//       // The data to send (will be converted to a query string)
//       data: {
//         user_response: {
//           user_id: $("#user_response_user_id").val(),
//           question_id: $("#user_response_question_id").val(),
//           response: getResponse()
//         }
//       },
//       // Whether this is a POST or GET request
//       type: "POST",
//       // The type of data we expect back
//       dataType : "json",
//       headers: {
//         'X-CSRF-Token': $('[name="authenticity_token"]').val()
//       }
//     })
//     // Code to run if the request succeeds (is done);
//     // The response is passed to the function
//     .done(function( data ) {
//       $.ajax({
//         // The URL for the request
//         url: data.url,
//         // The data to send (will be converted to a query string)
//
//         // Whether this is a POST or GET request
//         type: "GET",
//         // The type of data we expect back
//         dataType : "HTML",
//       })
//       .done(function( data ) {
//         $(".user-response-form").fadeOut(function(){
//           $(".user-response-form").html(data)
//           $(".user-response-form").fadeIn('fast')
//         })
//       });
//     });
//   });
// });
//
// getResponse = function(){
//   if($("#user_response_response").length) return $("#user_response_response").val();
//   if($('input[type="radio"]:checked').length) return $('input[type="radio"]:checked').val();
// }
//
// // $("#user_response_response").val()
