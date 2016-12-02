/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
var $ = require('jquery') ;

var url = window.location.href;
var index = url .lastIndexOf("\/");

url  = url .substring(index + 1, url .length);
console.log(url);


var chart = function() {


    var addType = [
        {name:'gk',text:'港口'},
        {name:'jg',text:'监管'},
        {name:'mys',text:'贸易商'},
        {name:'mycw',text:'贸易商财务'},
        {name:'zj',text:'资金方'},
        {name:'zjcw',text:'资金方财务'}
    ];

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



    })



};





chart();


module.exports = chart;