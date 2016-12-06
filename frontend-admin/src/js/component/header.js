/**
 * Created by JinWYP on 24/11/2016.
 */



var $ = require('jquery') ;
require('bootstrap/dist/js/bootstrap.js');

var rawToken = require('../service/token.js').rawToken ;
var sessionUserId = require('../service/token.js').sessionUserId ;

var header = function() {

    if (!rawToken || !sessionUserId){
        window.location.href = '/warehouse/admin/login'
    }


    // 点击隐藏的左部菜单
    var buttonToggleLeftMenu = $("[data-trigger-resize]");
    var body = $("body");

    buttonToggleLeftMenu.on("click", function() {
        if (body.hasClass("aside-collapsed")){
            body.removeClass("aside-collapsed")
        }else{
            body.addClass("aside-collapsed")
        }
    });


    // 记住点击展开的菜单
    var tempLeftMenuExpanded = localStorage.getItem('leftMenuExpanded');
    var leftMenuExpanded = [];



    if (tempLeftMenuExpanded) {
        leftMenuExpanded = tempLeftMenuExpanded.split(',')
    }
    if (leftMenuExpanded.length > 0) {
        leftMenuExpanded.forEach(function(menuId){
            $( menuId ).addClass('collapse in')
        })
    }

    $('a[data-toggle="collapse"]').on('click', function() {
        var index = leftMenuExpanded.indexOf($( this ).attr('href'));

        if (index === -1 ){
            leftMenuExpanded.push($( this ).attr('href'));
        }else {
            leftMenuExpanded.splice(index, 1);
        }

        localStorage.setItem('leftMenuExpanded', leftMenuExpanded.toString());
    });


    var leftMenuActive = localStorage.getItem('leftMenuActive') || '';
    
    if (leftMenuActive) {
        $( '#'+leftMenuActive ).parent().addClass('active')
    }

    $('.collapse li a').on('click', function() {

        leftMenuActive = ($( this ).attr('id'));
        localStorage.setItem('leftMenuActive', leftMenuActive.toString());
    });

};

header();

module.exports = header;