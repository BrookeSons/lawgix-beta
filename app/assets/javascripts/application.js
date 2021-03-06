
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require chosen-jquery
//= require scaffold
//= require cocoon
//= require nav
//= require tabs
//= require_tree .


$(document).ready(function() {
    var expanderTrigger = document.getElementById("js-expander-trigger");
    var expanderContent = document.getElementById("js-expander-content");

    $('#js-expander-trigger').click(function(){
        $(this).toggleClass("expander-hidden");
    });
});

$(function() {
    $("#modal-1").on("change", function() {
        if ($(this).is(":checked")) {
            $("body").addClass("modal-open");
        } else {
            $("body").removeClass("modal-open");
        }
    });

    $(".modal-window").on("click", function() {
        $(".modal-state:checked").prop("checked", false).change();
    });

    $(".modal-inner").on("click", function(e) {
        e.stopPropagation();
    });
});
