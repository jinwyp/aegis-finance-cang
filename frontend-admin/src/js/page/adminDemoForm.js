/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
var $ = require('jquery') ;

var userService = require('../service/user.js') ;


var url = window.location.href;
var index = url .lastIndexOf("\/");

url  = url .substring(index + 1, url .length);
// console.log(url);


var chart = function() {


    var addType = userService.userRoleList;

    var vm = avalon.define({
        $id : 'addUser',
        addUser : [],
        status : 'add',
        searchQuery : {
            addType : '港口',
            url:url

        },

        clickType :function(value){
            vm.searchQuery.addType = value;
        }

    });


};





chart();


module.exports = chart;