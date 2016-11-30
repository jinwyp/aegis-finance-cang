/**
 * Created by JinWYP on 30/11/2016.
 */


var  jQuery = require('jquery');


var prefix = '/api';

var url = {
    userList : prefix + '/users'
};


exports.getUserList = function (query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.userList,
        method   : 'GET',
        dataType : 'json',
        data     : params
    });

};

exports.addNewUser = function (user){

    var params = jQuery.extend({
        username : '',
        password : '',
        email : '',
        mobilePhone : '',
        companyName : '',
        role : ''
    }, user);

    return jQuery.ajax({
        url      : url.userList,
        method   : 'POST',
        dataType : 'json',
        data     : params
    });

};