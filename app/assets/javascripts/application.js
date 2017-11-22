//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap-datepicker

$('.carousel').carousel();
$('.datepicker').datepicker();
$('input[name="date"]').datepicker({ autoClose: true});
