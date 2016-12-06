/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;


var url = window.location.href;
var urlShowStatus = url.substring(url.lastIndexOf("\/") + 1, url.length);

console.log(urlShowStatus);


var sessionUser = function() {

    var vm = avalon.define({
        $id : 'passwordController',

        currentUser : {
            username : '',
            email : '',
            mobilePhone : '',
            companyName : '',
            belongToUser : '', // 资金方财务关联资金方用户ID, 贸易商财务关联贸易商用户ID
            role : ''
        },
        traderList : [],
        fundProviderList : [],

        pageShowStatus : 'password',

        addUser :function(){
            console.log(vm.currentUser.role)
        }

    });

    if (urlShowStatus === 'password'){
        vm.pageShowStatus = 'password';
    }else {
        vm.pageShowStatus = 'info';

        userService.getSessionUser().done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.currentUser = data.data;
            }else{
                console.log(data.error);
            }
        });

        userService.getUserList({role : 'traders', limit : 500}).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.traderList = data.data;
            }else{
                console.log(data.error);
            }
        });

        userService.getUserList({role : 'fundProvider', limit : 500}).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.fundProviderList = data.data;
            }else{
                console.log(data.error);
            }
        })

    }






};





sessionUser();


module.exports = sessionUser;