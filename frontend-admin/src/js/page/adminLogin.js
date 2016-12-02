/**
 * Created by JinWYP on 24/10/2016.
 */

var avalon = require('avalon2') ;
var $ = require('jquery') ;
var userService = require('../service/user.js') ;


var login = function() {

    var vm = avalon.define({
        $id: "loginController",
        user : {
            username : '',
            email : '',
            password : ''
        },
        errorMessage : '',
        successInputName : [],
        errorInputName : [],
        loginValidate : {
            onSuccess : function (reasons){
                if (vm.successInputName.indexOf(this.id) === -1) vm.successInputName.push(this.id.toString());
                if (vm.errorInputName.indexOf(this.id) > -1) vm.errorInputName.splice(vm.errorInputName.indexOf(this.id),1);
            },
            onError: function (reasons) {
                vm.errorMessage = reasons[0].getMessage();

                if (vm.successInputName.indexOf(this.id) > -1) vm.successInputName.splice(vm.successInputName.indexOf(this.id),1);
                if (vm.errorInputName.indexOf(this.id.toString()) === -1) vm.errorInputName.push(this.id.toString());

            },
            onValidateAll: function (reasons) {
                if (reasons.length) {
                    console.log('有表单项没有通过')
                } else {
                    console.log('表单全部通过');

                    userService.login({
                        email : vm.user.email,
                        password : vm.user.password
                    }).done(function( data, textStatus, jqXHR ) {
                        if (data.success){
                            console.log('登录成功', data);
                        }else{

                        }
                    })
                }
            }
        },

    });




};


login();

module.exports = login;


