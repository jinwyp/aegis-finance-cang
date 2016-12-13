

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
            data:['当前警戒线','当前货值','待还款金额']
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            },
            right:'4%'
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
                name:'当前警戒线',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {opacity:'0'}},
                data:[150, 150, 150, 150, 150, 150, 150]
            },
            {
                name:'待还款金额',
                type:'line',
                stack: '总量',
                areaStyle: {normal: {opacity:'0'}},
                data:[320, 332, 301, 334, 390, 330, 320]
            },
            {
                name:'当前货值',
                type:'line',
                stack: '总量',
                label: {
                    normal: {
                        show: true,
                        position: 'top'
                    }
                },
                areaStyle: {normal: {opacity:'0'}},
                data:[820, 932, 901, 934, 1290, 1330, 1320]
            }
        ]
    });


};

orderList();


module.exports = orderList;