//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$('img').on('click', function(event) {
  $(this).toggleClass('.navbar');
});
