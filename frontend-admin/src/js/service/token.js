/**
 * Created by JinWYP on 05/12/2016.
 */


var rawToken = localStorage.getItem('feathers-jwt') || '';
var token = 'Bearer ' + rawToken;
var sessionUserId = localStorage.getItem('sessionUserId') || '';

var headers = {
    "X-Authorization" : token
};



module.exports = {
    rawToken : rawToken,
    token : token,
    headers : headers,
    sessionUserId : sessionUserId
};