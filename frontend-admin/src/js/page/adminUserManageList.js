/**
 * Created by JinWYP on 01/12/2016.
 */



var avalon = require('avalon2') ;
var jQuery = require('jquery') ;
var userService = require('../service/user.js') ;


var url = window.location.href;
var urlShowStatus = url.substring(url.lastIndexOf("\/") + 1, url.length);
console.log(urlShowStatus);

var userList = function(query) {

    var vm = avalon.define({
        $id : 'userListController',
        userList : [],
        searchQuery : {
            role : '港口',
            companyName : ""
        },


        clickResetPassword:function () {
            $(".modal_1").modal();
        },

        clickDelete:function () {
            $(".modal_2").modal();
        }

    });


    function getUsers(){
        userService.getUserList({}).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.userList = data.data;
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