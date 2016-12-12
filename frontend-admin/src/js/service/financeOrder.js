/**
 * Created by JinWYP on 09/12/2016.
 */

var jQuery = require('jquery');
var headers = require('./token').headers;
var url = require('./token').url;




exports.getFinanceOrderList = function (query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.financeOrderList,
        method   : 'GET',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};



exports.getFinanceOrderInfoById = function (id, query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.financeOrderList + '/' + id,
        method   : 'GET',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};


exports.addNewFinanceOrder = function (order){

    var params = jQuery.extend({
        username : '',
        // password : '',
        email : '',
        mobilePhone : '',
        companyName : ''
        // belongToUser : '', // 资金方财务关联资金方用户ID, 贸易商财务关联贸易商用户ID
        // role : userRoleObject.systemAdmin
    }, order);


    return jQuery.ajax({
        url      : url.userList,
        method   : 'POST',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};

exports.updateUserInfoById = function (id, order){

    var params = jQuery.extend({}, order);

    return jQuery.ajax({
        url      : url.financeOrderList + '/' + id,
        method   : 'PATCH',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};