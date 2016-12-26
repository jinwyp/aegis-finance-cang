/**
 * Created by JinWYP on 05/12/2016.
 */


var rawToken = localStorage.getItem('feathers-jwt') || '';
var token = 'Bearer ' + rawToken;
var sessionUserId = localStorage.getItem('sessionUserId') || '';
var sessionUserRole = localStorage.getItem('sessionUserRole') || '';

var headers = {
    "X-Authorization" : token,
    "x-authorization-userid" : sessionUserId
};

var prefix = '/api';

var url = {
    financeOrderList : prefix + '/financeorders',
    paymentOrderList : prefix + '/paymentorders',
    contractList : prefix + '/files',
    userList : prefix + '/users',
    login : prefix + '/auth/login',
    password : prefix + '/user/password'
};



module.exports = {
    url : url,
    rawToken : rawToken,
    token : token,
    headers : headers,
    sessionUserId : sessionUserId,
    sessionUserRole : sessionUserRole
};