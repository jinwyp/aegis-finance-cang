/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;


var url = window.location.href;
var urlShowStatus = url.substring(url.lastIndexOf("\/") + 1, url.length);

console.log(urlShowStatus);


var sessionUser = function() {

    var vm = avalon.define({
        $id : 'passwordController',

        currentUser : {
            username : '',
            email : '',
            mobilePhone : '',
            companyName : '',
            belongToUser : '', // 资金方财务关联资金方用户ID, 贸易商财务关联贸易商用户ID
            role : ''
        },

        pageShowStatus : 'password',

        editUser :function(){
            if (vm.pageShowStatus === 'info') {

                var user = {
                    username : vm.currentUser.username,
                    email : vm.currentUser.email,
                    mobilePhone : vm.currentUser.mobilePhone,
                    companyName : vm.currentUser.companyName,
                    role : vm.currentUser.role
                };

                userService.updateUserInfoById(vm.currentUser._id, user).done(function (data, textStatus, jqXHR) {
                    if (data.success) {
                        $.notify("用户修改信息成功!", 'success');
                    }
                })
            }
        }

    });

    if (urlShowStatus === 'password'){
        vm.pageShowStatus = 'password';
    }else {
        vm.pageShowStatus = 'info';

        userService.getSessionUser().done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.currentUser = data.data;
            }else{
                console.log(data.error);
            }
        });

    }




    avalon.define({
        $id: "AAA",
        name: "aaa",
        color: "aaa"
    });

    avalon.define({
        $id: "BBB",
        name: "bbb",
        color: "bbb"
    });

    avalon.define({
        $id: "CCC",
        name: "ccc",
        color: "ccc"
    });

    avalon.define({
        $id: "DDD",
        name: "ddd",
        color: "ddd"
    });



};





sessionUser();


module.exports = sessionUser;