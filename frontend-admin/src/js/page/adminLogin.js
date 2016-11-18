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
        successInputName : {},
        errorInputName : {},
        loginValidate : {
            onSuccess : function (reasons){
                if (reasons.length === 0){
                    vm.successInputName[this.id] = true;
                    vm.errorInputName[this.id] = false;
                    console.log(this.id, reasons)
                }
            },
            onError: function (reasons) {
                vm.errorMessage = reasons[0].getMessage();
                vm.successInputName[this.id] = false;
                vm.errorInputName[this.id] = true;
                console.log("正确时样式： ", this.id, vm.successInputName[this.id])
                console.log("错误时样式： ", this.id, vm.errorInputName[this.id])
            },
            onValidateAll: function (reasons) {
                if (reasons.length) {
                    console.log('有表单没有通过')
                } else {
                    console.log('全部通过')
                }
            }
        }
    });

    $("<div>这是jquery生成的,看看avalon好使不</div>").appendTo("body")

};


login();

module.exports = login;


