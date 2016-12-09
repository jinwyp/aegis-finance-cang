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


exports.getFinanceOrderInfoById = function (userId, query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.financeOrderList + '/' + userId,
        method   : 'GET',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};


exports.updateUserInfoById = function (userId, user){

    var params = jQuery.extend({}, user);

    return jQuery.ajax({
        url      : url.financeOrderList + '/' + userId,
        method   : 'PATCH',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};