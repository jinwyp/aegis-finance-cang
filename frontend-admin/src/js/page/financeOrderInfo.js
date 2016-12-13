

var avalon = require('avalon2') ;
require('../component/header.js');

var echarts = require('echarts');

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
    

    //折线图
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: ''
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['警戒线','货值','参考指数货值']
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['周一','周二','周三','周四','周五','周六','周日']
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'警戒线',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {}},
                data:[120, 132, 101, 134, 90, 230, 210]
            },
            {
                name:'货值',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {}},
                data:[220, 182, 191, 234, 290, 330, 310]
            },
            {
                name:'参考指数货值',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {}},
                data:[150, 232, 201, 154, 190, 330, 410]
            }

        ]
    });


};

orderList();


module.exports = orderList;