

var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;
var orderService = require('../service/financeOrder.js') ;



var orderList = function(query) {

    var vm = avalon.define({
        $id : 'orderListController',
        orderList : [],
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



    function getOrders(){

        var query = {
            $limit: Number(vm.pagination.countPerPage),
            $skip : (Number(vm.pagination.currentPage)-1) * Number(vm.pagination.countPerPage)
        };
        orderService.getFinanceOrderList(query).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.orderList = data.data;
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


    getOrders();

};

orderList();


module.exports = orderList;