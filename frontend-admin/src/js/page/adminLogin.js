/**
 * Created by JinWYP on 24/10/2016.
 */

var avalon = require('avalon2') ;
var $ = require('jquery') ;
require('bootstrap/dist/js/bootstrap.js');


var login = function() {

    var vm = avalon.define({
        $id: "loginController",
        user : {
            username : '',
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
                    console.log('表单全部通过')
                }
            }
        }
    });


};


login();

module.exports = login;


