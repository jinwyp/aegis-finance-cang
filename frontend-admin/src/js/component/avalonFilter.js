/**
 * Created by JinWYP on 09/12/2016.
 */


var avalon = require('avalon2') ;
var userService = require('../service/user.js') ;

avalon.filters.rolename= function (str) {
    if (!str){
        return str
    }
    return userService.userRoleAllObject[str]
};