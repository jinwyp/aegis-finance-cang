
var jQuery = require('jquery') ;
var avalon = require('avalon2') ;
require('../component/header.js');

var tokenHeaders = require('../service/token').headers;

window.jQuery = jQuery;
var WebUploader = require('../libs/webuploader/webuploader.nolog.js') ;


var echarts = require('echarts');
var userService = require('../service/user.js') ;
var orderService = require('../service/financeOrder.js') ;
var sessionUserId = require('../service/token.js').sessionUserId ;
var sessionUserRole = require('../service/token.js').sessionUserRole ;


var url = window.location.href;
var orderId = url.substring(url.lastIndexOf("\/") + 1, url.length);
var urlShowStatus = 'orderInfo'

if (url.indexOf('contract') > -1) urlShowStatus = 'contractInfo'
console.log(orderId, urlShowStatus);

var orderInfo = function(query) {

    var vm = avalon.define({
        $id : 'orderInfoController',
        role : userService.userRoleKeyObject,
        contractType : orderService.contractType,
        selectedContractType : '',
        contractList : [],
        uploadFileList : [],
        currentUser : {
            id : sessionUserId,
            role : sessionUserRole
        },
        currentOrderId : orderId,
        currentOrder : {},
        action : orderService.actionObject,
        doAction : function (actionName){
            orderService.auditFinanceOrder(orderId, sessionUserRole, actionName).done(function (data, textStatus, jqXHR) {
                if (data.success) {
                    getOrderInfo();
                    $.notify("提交成功!", 'success');
                } else {
                    console.log(data.error);
                }
            });
        },

        getFile : function (event, file){
            event.preventDefault();
            orderService.getContractById(file._id);
        },

        contractFilter: function (el, i, role) {
            // console.log(el, i,role)
            return el.contractUserType === role
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

        orderService.getContractListByOrderId(orderId).done(function (data, textStatus, jqXHR) {
            if (data.success) {
                vm.contractList = data.data;
            } else {
                console.log(data.error);
            }
        });
    }

    getOrderInfo();
    

    //折线图
    if (urlShowStatus === 'orderInfo'){
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
    }else {
        var uploader = WebUploader.create({

            // 选完文件后，是否自动上传。
            auto: true,

            // swf文件路径
            swf: '/static/admin/js/libs/webuploader/Uploader.swf',

            // 文件接收服务端。
            server: '/api/files',

            // 选择文件的按钮。可选。
            // 内部根据当前运行是创建，可能是input元素，也可能是flash.
            pick: '#uploadPicker',

            // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
            resize: false
        });

        uploader.on( 'uploadBeforeSend', function( block, data, headers ) {

            jQuery.extend(data, {
                orderId : orderId,
                contractUserType : sessionUserRole,
                contractType : vm.selectedContractType
            });
            jQuery.extend(headers, tokenHeaders);

        });

        uploader.on( 'fileQueued', function( file ) {
            console.log(file)
        });

        uploader.on( 'uploadSuccess', function( file ) {
            vm.uploadFileList.push({
                name : file.name,
                ext  : file.ext,
                size : file.size,
                type : file.type
            });
            $.notify("上传成功!", 'success');
        });

        uploader.on( 'uploadError', function( file ) {
            $.notify("上传出现问题!", 'error');
        });

    }



};

orderInfo();


module.exports = orderInfo;