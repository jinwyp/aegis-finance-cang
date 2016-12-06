/**
 * Created by JinWYP on 24/11/2016.
 */



var $ = require('jquery') ;
require('bootstrap/dist/js/bootstrap.js');

var rawToken = require('../service/token.js').rawToken ;

var header = function() {

    if (!rawToken){
        window.location.href = '/warehouse/admin/login'
    }


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