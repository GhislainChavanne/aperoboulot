//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js

$('.carousel').carousel();
$('.datepicker').datepicker();

$('.datepicker').datepicker().on('changeDate', function(ev) {
    $(this).datepicker('hide');
});
