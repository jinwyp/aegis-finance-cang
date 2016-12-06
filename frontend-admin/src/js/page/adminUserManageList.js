/**
 * Created by JinWYP on 01/12/2016.
 */



var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;



var userList = function(query) {

    var vm = avalon.define({
        $id : 'userListController',
        userList : [],
        searchQuery : {
            username : '',
            companyName : ''
        },
        pagination : {
            total : 0,
            currentPage : 1,
            countPerPage : 10,
            totalPage : 1,
            from : 1,
            to : 10
        },

        pageFirst : function(){
            vm.pagination.currentPage = 1;
            getUsers();
        },
        pageLast : function(){
            vm.pagination.currentPage = vm.pagination.totalPage;
            getUsers();
        },
        pagePrevious : function(){
            if (vm.pagination.currentPage - 1 >= 1) {
                vm.pagination.currentPage = vm.pagination.currentPage - 1;
            }

            getUsers();
        },
        pageNext : function(){
            if (vm.pagination.currentPage + 1 <= vm.pagination.totalPage) {
                vm.pagination.currentPage = vm.pagination.currentPage + 1;
            }
            getUsers();
        },


        clickSearchButton : function (event) {
            event.preventDefault();
            getUsers();
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
            $limit: Number(vm.pagination.countPerPage),
            $skip : (Number(vm.pagination.currentPage)-1) * Number(vm.pagination.countPerPage)
        };
        userService.getUserList(query).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.userList = data.data;
                vm.pagination.total = data.meta.total;
                vm.pagination.totalPage = Math.ceil(data.meta.total / data.meta.count);

                vm.pagination.from = data.meta.offset + 1;
                vm.pagination.to = Number(vm.pagination.countPerPage) * data.meta.page;

                if (vm.pagination.to > data.meta.total) vm.pagination.to = data.meta.total;
                if (vm.pagination.from >= data.meta.total) vm.pagination.from = 1;

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