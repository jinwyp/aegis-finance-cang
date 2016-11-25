
var echarts = require('echarts');



// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
var myChart2 = echarts.init(document.getElementById('main2'));
    // myChart.showLoading();
    // myChart.hideLoading();
// 绘制图表
myChart.setOption({
    backgroundColor: '#2c343c',
    textStyle:{
        color:'#ffffff'
    },
    title: { text: '折线图' },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['煤炭价格'],
        textStyle:{
            color:'#ffffff',
            fontSize:14
        }
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
            axisLine:{
                lineStyle:{
                    color:'#ffffff'
                }
            },
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLine:{
                lineStyle:{
                    color:'#ffffff'
                }
            }
        }
    ],
    series : [
        {
            name:'煤炭价格',
            type:'line',
            stack: '总量',
            areaStyle: {
                normal: {
                    opacity:'0'
                }
            },
            data:[5.5, 5.6, 5.7, 6.0, 6.2, 6.4, 6.0]
        }
    ]
});
myChart2.setOption({

    title: { text: '折线图' },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['煤炭价格']
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
            name:'煤炭价格',
            type:'line',
            stack: '总量',
            lineStyle:{
                normal:{
                    color:'#98cab3'
                }
            },
            areaStyle: {
                normal: {
                    color:'#aed4c2'
                }
            },
            itemStyle:{
                normal:{
                    color:'#98cab3'
                }
            },
            data:[5.5, 5.6, 5.7, 6.0, 6.2, 6.4, 6.0]
        }
    ]
});