/**
 * Created by JinWYP on 30/11/2016.
 */


var  jQuery = require('jquery');
var  headers = require('./token').headers;
var  sessionUserId = require('./token').sessionUserId;


var prefix = '/api';

var url = {
    userList : prefix + '/users',
    login : prefix + '/auth/login',
    password : prefix + '/user/password'
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

var userRolesAll = [
    { name:'systemAdmin', displayName : '系统管理员'},
    { name:'financer', displayName : '融资方'},
    { name:'harbor', displayName : '港口'},
    { name:'supervisor', displayName : '监管'},
    { name:'traders', displayName : ' 贸易商'},
    { name:'tradersAccountant', displayName : '贸易商财务'},
    { name:'fundProvider', displayName : ' 资金方'},
    { name:'fundProviderAccountant', displayName : '资金方财务'}
];


var userRoleObject = {};
var userRoleAllObject = {};

userRoles.forEach(function (role, index){
    userRoleObject[role.name] = role.displayName;
});
userRolesAll.forEach(function (role, index){
    userRoleAllObject[role.name] = role.displayName;
});

exports.userRoleList = userRoles;
exports.userRoleObject = userRoleObject;
exports.userRoleAllList = userRolesAll;
exports.userRoleAllObject = userRoleAllObject;


exports.login = function (user){

    var params = jQuery.extend({
        email : '',
        password : ''
    }, user);

    return jQuery.ajax({
        url      : url.login,
        method   : 'POST',
        dataType : 'json',
        data     : params
    });

};

exports.getSessionUser = function (query){

    if (sessionUserId){
        var params = jQuery.extend({}, query);

        return jQuery.ajax({
            url      : url.userList + '/' + sessionUserId,
            method   : 'GET',
            dataType : 'json',
            data     : params,
            headers : headers
        });
    }else{
        return {
            done : function () {
                
            }
        }
    }


};

exports.getUserList = function (query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.userList,
        method   : 'GET',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};


exports.getUserInfoById = function (userId, query){

    var params = jQuery.extend({}, query);

    return jQuery.ajax({
        url      : url.userList + '/' + userId,
        method   : 'GET',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};

exports.addNewUser = function (user){

    var params = jQuery.extend({
        username : '',
        // password : '',
        email : '',
        mobilePhone : '',
        companyName : ''
        // belongToUser : '', // 资金方财务关联资金方用户ID, 贸易商财务关联贸易商用户ID
        // role : userRoleObject.systemAdmin
    }, user);


    return jQuery.ajax({
        url      : url.userList,
        method   : 'POST',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};

exports.updateUserInfoById = function (userId, user){

    var params = jQuery.extend({}, user);

    return jQuery.ajax({
        url      : url.userList + '/' + userId,
        method   : 'PATCH',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};

exports.modifyPassword = function (userId, oldPassword, newPassword){

    var params = jQuery.extend({}, {
        userId : userId,
        oldPassword : oldPassword,
        newPassword : newPassword
    });

    return jQuery.ajax({
        url      : url.password,
        method   : 'POST',
        dataType : 'json',
        data     : params,
        headers : headers
    });

};

