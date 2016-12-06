/**
 * Created by JinWYP on 05/12/2016.
 */


var token = 'Bearer ' + localStorage.getItem('feathers-jwt');
var sessionUserId = localStorage.getItem('sessionUserId');
var headers = {
    "X-Authorization" : token
};


module.exports = {
    token : token,
    headers : headers,
    sessionUserId : sessionUserId
};