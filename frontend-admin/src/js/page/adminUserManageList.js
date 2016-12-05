/**
 * Created by JinWYP on 01/12/2016.
 */



var avalon = require('avalon2') ;
var jQuery = require('jquery') ;
var userService = require('../service/user.js') ;




var userList = function(query) {

    var vm = avalon.define({
        $id : 'userList',
        userList : [],
        traderList : [],
        fundProviderList : [],
        // searchQuery : {
        //     addType : '港口',
        //     url:url
        //
        // },


        clickType :function(value){
            vm.searchQuery.addType = value;
        },

        clickResetPassword:function () {
            $(".modal_1").modal();
        },

        clickDelete:function () {
            $(".modal_2").modal();
        }





    });

    userService.getUserList({}).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.userList = data.data;
            console.log(data.success);
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })

    userService.getUserList({role : 'traders'}).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.traderList = data.data;
            console.log(data.success);
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })

    userService.getUserList({role : 'fundProvider'}).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.fundProviderList = data.data;
            console.log(data.success);
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })


};

userList();


module.exports = userList;