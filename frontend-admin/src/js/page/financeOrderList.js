

var avalon = require('avalon2') ;
require('../component/header.js');
require('../component/pagination.js');

var orderService = require('../service/financeOrder.js') ;
var sessionUserId = require('../service/token.js').sessionUserId ;
var sessionUserRole = require('../service/token.js').sessionUserRole ;





var orderList = function() {

    var vm = avalon.define({
        $id : 'orderListController',
        orderList : [],
        currentUser : {
            id : sessionUserId,
            role : sessionUserRole
        },
        searchQuery : {
            username : '',
            companyName : ''
        },
        configPagination : {
            id : 'pagination',
            totalCount : 0,
            currentPage : 1,
            countPerPage : 10,
            changePageNo : function(currentPageNo, skip, countPerPage){
                var query = {
                    $limit: countPerPage,
                    $skip : skip,
                    userRole : sessionUserRole,
                    userId : sessionUserId
                };

                getOrders(query)
            }
        }

    });


    function getOrders(query){
        query = query || {
            userRole : sessionUserRole,
            userId : sessionUserId
        };

        orderService.getFinanceOrderList(query).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.orderList = data.data;

                vm.configPagination.currentPage = data.meta.page;
                vm.configPagination.totalCount = data.meta.total;

            }else{
                console.log(data.error);
            }
        })
    }

    getOrders();

};

orderList();


module.exports = orderList;