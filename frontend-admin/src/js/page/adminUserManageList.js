/**
 * Created by JinWYP on 01/12/2016.
 */



var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;


var url = window.location.href;
var urlShowStatus = url.substring(url.lastIndexOf("\/") + 1, url.length);
console.log(urlShowStatus);

var userList = function(query) {

    var vm = avalon.define({
        $id : 'userListController',
        userList : [],
        searchQuery : {
            username : '',
            companyName : ''
        },
        pageShowStatus:urlShowStatus,
        pagination : {
            total : 0,
            offset : 0,
            currentPage : 1,
            countPerPage : 10
        },


        clickResetPassword:function () {
            $(".modal_1").modal();
        },

        clickDelete:function () {
            $(".modal_2").modal();
        }

    });


    function getUsers(){
        var query = {
            $limit: vm.pagination.countPerPage,
            $skip : 1 + vm.pagination.currentPage * vm.pagination.countPerPage,
        };
        userService.getUserList(query).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.userList = data.data;
                vm.pagination.total = data.meta.total;
                vm.pagination.offset = data.meta.offset;
                vm.pagination.currentPage = data.meta.page;

                // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
            }else{
                console.log(data.error);
            }
        })
    }


    getUsers();



};

userList();


module.exports = userList;