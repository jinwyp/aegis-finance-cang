/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
var $ = require('jquery') ;


var chart = function() {
    var addType = [
        {name:'gk',text:'港口'},
        {name:'jg',text:'监管'},
        {name:'mys',text:'贸易商'},
        {name:'mycw',text:'贸易商财务'},
        {name:'zj',text:'资金方'},
        {name:'zicw',text:'资金方财务'}
    ];

    var vm = avalon.define({
        $id : 'addUser',
        addUser : [],
        css : {
            status : false
        },
        searchQuery : {
            addType : '港口'
        },

        clickType :function(value){
            vm.searchQuery.addType = value;
        }



    })



};





chart();


module.exports = chart;