//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function() {
    $('.hello').popover({
      content: "hello there !"
    });
    $('body').css({ 'background-color': '#DDF4FF' });

});
