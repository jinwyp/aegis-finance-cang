/**
 * Created by JinWYP on 24/11/2016.
 */



var $ = require('jquery') ;
require('bootstrap/dist/js/bootstrap.js');
require('./notify.js');
require('./avalonFilter.js');

var rawToken = require('../service/token.js').rawToken ;
var sessionUserId = require('../service/token.js').sessionUserId ;

var userService = require('../service/user.js') ;

var header = function() {

    if (!rawToken || !sessionUserId){
        window.location.href = '/warehouse/admin/login'
    }

    // 全局AJAX错误处理
    $( document ).ajaxError(function(event, jqXHR, settings, thrownError) {
        if (jqXHR.status === 401 || jqXHR.status === 403){
            window.location.href = '/warehouse/admin/login'
        }else{
            var data = JSON.parse(jqXHR.responseText);
            $.notify(data.error.message, 'error');
        }
    });

    $( document ).ajaxSuccess(function( event, jqXHR, settings, data ) {
        if (!data.success) {
            if (data.error.code === 401 || data.error.code === 403){
                window.location.href = '/warehouse/admin/login'
            }else {
                $.notify(data.error.message, 'error');
            }
        }

    });


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


    // 记住点击的二级菜单
    var leftMenuActive = localStorage.getItem('leftMenuActive') || '';
    if (leftMenuActive) {
        $( '#'+leftMenuActive ).parent().addClass('active')
    }
    $('.collapse li a').on('click', function() {

        leftMenuActive = ($( this ).attr('id'));
        localStorage.setItem('leftMenuActive', leftMenuActive.toString());
    });


    // 左侧菜单用户信息
    userService.getSessionUser().done(function(data, textStatus, jqXHR) {
        if (data.success){
            $('.user-block-name').html(data.data.username);
            $('.user-block-role').html(userService.userRoleAllObject[data.data.role]);
        }else{
            console.log(data.error);
        }
    });

};

header();

module.exports = header;