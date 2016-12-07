/**
 * Created by JinWYP on 24/11/2016.
 */



var avalon = require('avalon2') ;
require('../component/header.js');

var userService = require('../service/user.js') ;


var url = window.location.href;
var urlShowStatus = url.substring(url.lastIndexOf("\/") + 1, url.length);
var userId = url.match(/\/user\/[a-zA-Z_0-9]{24,24}/);
if (userId){ userId = userId[0].split('/')[2] }

console.log('userID:', userId, '页面状态:', urlShowStatus);


var userInfo = function() {

    var vm = avalon.define({
        $id : 'userAddController',

        currentUser : {
            username : '',
            email : '',
            mobilePhone : '',
            companyName : '',
            belongToUser : '', // 资金方财务关联资金方用户ID, 贸易商财务关联贸易商用户ID
            role : ''
        },
        traderList : [],
        fundProviderList : [],

        roleList : userService.userRoleList,

        pageShowStatus : 'add',

        errorMessage : {
            inputUsername : '',
            inputEmail : '',
            inputMobilePhone : '',
            inputCompanyName : '',
            inputUserRole:'',
            inputMYSFinance:'',
            inputZJFFinance:''
        },
        successInputName : [],
        errorInputName : [],
        addValidate : {
            onSuccess : function (reasons){
                if (vm.successInputName.indexOf(this.id) === -1) vm.successInputName.push(this.id.toString());
                if (vm.errorInputName.indexOf(this.id) > -1) vm.errorInputName.splice(vm.errorInputName.indexOf(this.id),1);
            },
            onError: function (reasons) {
                console.log(reasons[0].getMessage())
                vm.errorMessage[this.id.toString()] = reasons[0].getMessage();

                if (vm.successInputName.indexOf(this.id) > -1) vm.successInputName.splice(vm.successInputName.indexOf(this.id),1);
                if (vm.errorInputName.indexOf(this.id.toString()) === -1) vm.errorInputName.push(this.id.toString());

            },
            onValidateAll: function (reasons) {
                console.log(reasons);
                if (reasons.length) {
                    console.log('表单项没有通过');
                    $("input").focus().blur();
                    $("select").focus().blur();
                } else {
                    console.log('表单全部通过');
                    var user = {
                        username : vm.currentUser.username,
                        email : vm.currentUser.email,
                        mobilePhone : vm.currentUser.mobilePhone,
                        companyName : vm.currentUser.companyName,
                        role : vm.currentUser.role
                    };

                    if (vm.currentUser.belongToUser) {
                        user.belongToUser = vm.currentUser.belongToUser
                    }
                    userService.addNewUser(user).done(function( data, textStatus, jqXHR ) {
                        if (data.success){
                            $.notify("创建用户成功!", 'success');
                        }
                    })
                }
            }
        },

        addUser :function(){
            console.log(vm.currentUser.role, vm.currentUser.belongToUser)
        }

    });



    function getUserInfo(){
        userService.getUserInfoById(userId).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.currentUser = data.data;
                // vm.configPagination.totalPages = Math.ceil(data.meta.total / data.meta.count);
            }else{
                console.log(data.error);
            }
        });

        userService.getUserList({role : 'traders', $limit : 500}).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.traderList = data.data;
            }else{
                console.log(data.error);
            }
        });

        userService.getUserList({role : 'fundProvider', $limit : 500}).done(function(data, textStatus, jqXHR) {
            if (data.success){
                vm.fundProviderList = data.data;
            }else{
                console.log(data.error);
            }
        })
    }


    if (urlShowStatus === 'add'){
        vm.pageShowStatus = 'add';
    }else if (urlShowStatus === 'edit'){
        vm.pageShowStatus = 'edit';
        getUserInfo()

    }else {
        vm.pageShowStatus = 'info';
        getUserInfo()
    }




};





userInfo();


module.exports = userInfo;