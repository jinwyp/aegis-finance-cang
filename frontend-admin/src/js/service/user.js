/**
 * Created by JinWYP on 30/11/2016.
 */


var  jQuery = require('jquery');


var prefix = '/api';

var url = {
    userList : prefix + '/users'
};


var userRoles = [
    // { name:'systemAdmin', displayName : '系统管理员'},
    // { name:'financer', displayName : '融资方'},
    { name:'harbor', displayName : '港口'},
    { name:'supervisor', displayName : '监管'},
    { name:'traders', displayName : ' 贸易商'},
    { name:'tradersAccountant', displayName : '贸易商财务'},
    { name:'fundProvider', displayName : ' 资金方'},
    { name:'fundProviderAccountant', displayName : '资金方财务'}
];


var userRoleObject = {};

userRoles.forEach(function (role, index){
    userRoleObject[role.name] = role.displayName;
});


exports.getUserList = function (query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.userList,
        method   : 'GET',
        dataType : 'json',
        data     : params
    });

};


exports.getUserInfoById = function (userId, query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.userList + '/' + userId,
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
        role : userRoleObject.systemAdmin
    }, user);


    return jQuery.ajax({
        url      : url.userList,
        method   : 'POST',
        dataType : 'json',
        data     : params
    });

};

exports.updateUserInfoById = function (userId, user){

    var params = jQuery.extend({
        username : '',
        password : '',
        email : '',
        mobilePhone : '',
        companyName : '',
        role : userRoleObject.systemAdmin
    }, user);


    return jQuery.ajax({
        url      : url.userList + '/' + userId,
        method   : 'PUT',
        dataType : 'json',
        data     : params
    });

};

