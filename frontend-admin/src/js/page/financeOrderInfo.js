

var avalon = require('avalon2') ;
require('../component/header.js');

var echarts = require('echarts');
var orderService = require('../service/financeOrder.js') ;
var sessionUserId = require('../service/token.js').sessionUserId ;
var sessionUserRole = require('../service/token.js').sessionUserRole ;


var url = window.location.href;
var orderId = url.substring(url.lastIndexOf("\/") + 1, url.length);
console.log(orderId);

var orderInfo = function(query) {

    var vm = avalon.define({
        $id : 'orderInfoController',
        currentOrderId : orderId,
        currentOrder : {},
        action : orderService.actionObject,
        doAction : function (actionName){
            orderService.auditFinanceOrder(orderId, sessionUserRole, actionName).done(function (data, textStatus, jqXHR) {
                if (data.success) {
                    $.notify("提交成功!", 'success');
                } else {
                    console.log(data.error);
                }
            });
        }
    });



    function getOrderInfo() {
        orderService.getFinanceOrderInfoById(orderId).done(function (data, textStatus, jqXHR) {
            if (data.success) {
                vm.currentOrder = data.data;
            } else {
                console.log(data.error);
            }
        });
    }

    getOrderInfo();
    

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
                lineStyle: {normal: {type:'dotted'}},
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

orderInfo();


module.exports = orderInfo;