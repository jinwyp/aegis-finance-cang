

var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;
var orderService = require('../service/financeOrder.js') ;



var orderList = function(query) {

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
        }

    });




};

orderList();


module.exports = orderList;