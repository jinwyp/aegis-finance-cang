/**
 * Created by JinWYP on 24/11/2016.
 */



var $ = require('jquery') ;

var header = function() {

    var buttonToggleLeftMenu = $("[data-trigger-resize]");
    var body = $("body");

    buttonToggleLeftMenu.on("click", function() {
        if (body.hasClass("aside-collapsed")){
            body.removeClass("aside-collapsed")
        }else{
            body.addClass("aside-collapsed")
        }
    })
};

header();

module.exports = header;