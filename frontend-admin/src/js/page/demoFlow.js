
var avalon = require('avalon2') ;
var $ = require('jquery') ;
require('../component/header.js');



var flowChart = function() {

    var vm = avalon.define({
        $id : 'flowController',
        flowData : {
            vbox : [
                { id : 'V1' , edge : [
                    {id: 'E1', to : 'V2', left : 0}
                ]},
                { id : 'V2' , edge : [
                    {id: 'E2', to : 'V3'}
                ]},
                { id : 'V3' , edge : [

                ]}
            ],
            edge : [
                { id : 'E1', begin : 'V1', end : 'V2'}
            ]
        },





    });

};





flowChart();


module.exports = flowChart;