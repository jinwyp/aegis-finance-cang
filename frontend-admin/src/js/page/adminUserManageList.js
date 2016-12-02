/**
 * Created by JinWYP on 01/12/2016.
 */



var avalon = require('avalon2') ;
var $ = require('jquery') ;
var userService = require('../service/user.js') ;




var userList = function(query) {

    var vm = avalon.define({
        $id : 'userList',
        userList : [],
        // searchQuery : {
        //     addType : '港口',
        //     url:url
        //
        // },

        clickType :function(value){
            vm.searchQuery.addType = value;
        }

    });

    userService.getUserList(query).done(function(data, textStatus, jqXHR) {
        if (data.success){
            vm.userList = data.data;
            console.log(data.success);
            // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
        }else{
            console.log(data.error);
        }
    })
};



userList();


module.exports = userList;