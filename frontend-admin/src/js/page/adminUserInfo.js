/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
var $ = require('jquery') ;

var userService = require('../service/user.js') ;


var url = window.location.href;
var index = url.lastIndexOf("\/");

url  = url.substring(index + 1, url.length);
console.log(url);


var chart = function() {

    var vm = avalon.define({
        $id : 'userAddController',

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

        roleList : userService.userRoleList,

        pageShowStatus : 'add',

        addUser :function(){
            console.log(vm.currentUser.role)
        }

    });

    if (url === 'edit'){
        vm.pageShowStatus = 'edit'
    }else if (url !== 'add'){
        vm.pageShowStatus = 'info'
    }
console.log(vm.pageShowStatus)



    userService.getUserList({role : 'traders'}).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.traderList = data.data;
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })

    userService.getUserList({role : 'fundProvider'}).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.fundProviderList = data.data;
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })

};





chart();


module.exports = chart;