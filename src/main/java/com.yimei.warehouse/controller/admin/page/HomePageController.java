package com.yimei.warehouse.controller.admin.page;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Api(tags = {"admin-page"}, description = "管理后台 平台管理首页")
@Controller
public class HomePageController {

    /**
     * 后台管理 平台管理首页
     */

    @ApiOperation(value = "管理后台登陆页面", notes = "管理后台登陆页面 不需要登录就可以访问")
    @RequestMapping(value = "/warehouse/admin/login", method = RequestMethod.GET)
    public String adminLogin() {
        return "admin/login";
    }


    @ApiOperation(value = "管理后台平台管理员首页", notes = "管理后台平台管理员首页 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home", method = RequestMethod.GET)
    public String adminHome() {
//        if (adminSession.getUser() == null) {
//            return "redirect:/warehouse/admin/login";
//        }
        return "redirect:/warehouse/admin/home/session/info";
    }

    @ApiOperation(value = "管理后台前端路由重定向", notes = "管理页面为了前端路由需要重定向")
    @RequestMapping(value = "/warehouse/admin/home/**", method = RequestMethod.GET)
    public String adminHomeRedirect() {
//        if (adminSession.getUser() == null) {
//            return "redirect:/warehouse/admin/login";
//        }
        return "forward:/warehouse/admin/home";
    }


    @ApiOperation(value = "管理后台首页跳转", notes = "管理后台首页跳转 没有登录调转到登录页面, 如果登录了跳转到管理员Home页面")
    @RequestMapping(value = "/warehouse/admin", method = RequestMethod.GET)
    public String adminIndexRedirect() {
//        if (adminSession.getUser() == null) {
//            return "redirect:/warehouse/admin/login";
//        }
        return "redirect:/warehouse/admin/home";
    }



    @ApiOperation(value = "管理后台平台管理员范例页面 - Dashboard", notes = "管理后台平台管理员范例 Dashboard 页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/demo/dashboard", method = RequestMethod.GET)
    public String adminDemoDashboard() {
        return "admin/platform/demoDashboard";
    }

    @ApiOperation(value = "管理后台平台管理员范例页面 - Echart", notes = "管理后台平台管理员范例Echart图表页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/demo/echart", method = RequestMethod.GET)
    public String adminDemoEchart() {
        return "admin/platform/demoEchart";
    }








    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 用户列表", notes = "管理后台平台管理员添加的用户列表页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/userlist", method = RequestMethod.GET)
    public String adminUserList() {
            return "admin/platform/userList";
        }


    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 添加用户", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/user/add", method = RequestMethod.GET)
    public String adminUserAdd() {
        return "admin/platform/userInfo";
    }

    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 编辑用户", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/user/{userId}/edit", method = RequestMethod.GET)
    public String adminUserEdit(@PathVariable(value = "userId") String userId) {
        return "admin/platform/userInfo";
    }

    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 用户信息", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/user/{userId}", method = RequestMethod.GET)
    public String adminUserInfo(@PathVariable(value = "userId") String userId) {
        return "admin/platform/userInfo";
    }




    @ApiOperation(value = "管理后台平台管理员添加的个人信息 - 修改密码", notes = "管理后台平台管理员添加的个人信息 - 修改密码 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/session/password", method = RequestMethod.GET)
    public String adminCurrentUserModifyPassport() {
        return "admin/platform/sessionModifyPassword";
    }

    @ApiOperation(value = "管理后台平台管理员添加的个人信息 - 基本信息", notes = "管理后台平台管理员添加的基本信息页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/session/info", method = RequestMethod.GET)
    public String adminCurrentUserInfo() {
        return "admin/platform/sessionInfo";
    }




    @ApiOperation(value = "管理后台平台管理员 - 融资管理 - 订单列表", notes = "管理后台平台管理员融资管理")
        @RequestMapping(value = "/warehouse/admin/home/finance", method = RequestMethod.GET)
        public String adminFinanceManage() {
            return "admin/customer/financeOrderList";
    }

    @ApiOperation(value = "管理后台平台管理员 - 融资管理 - 订单详细", notes = "管理后台平台管理员融资管理详细")
    @RequestMapping(value = "/warehouse/admin/home/finance/{id}", method = RequestMethod.GET)
    public String adminFinanceOrderDetails() {
        return "admin/customer/financeOrderInfo";
    }


    @ApiOperation(value = "管理后台平台管理员 - 融资管理 - 订单合同上传", notes = "管理后台平台管理员融资管理合同上传")
        @RequestMapping(value = "/warehouse/admin/home/finance/contract/{id}", method = RequestMethod.GET)
        public String adminFinanceContractUpload() {
            return "admin/customer/contractUpload";
    }

    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 公司列表", notes = "管理后台平台管理员添加的用户列表页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/companylist", method = RequestMethod.GET)
    public String adminCompanyList() {
            return "admin/platform/companyList";
        }


    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 添加公司", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/company/add", method = RequestMethod.GET)
    public String adminCompanyAdd() {
        return "admin/platform/companyInfo";
    }

    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 编辑公司", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/company/{companyId}/edit", method = RequestMethod.GET)
    public String adminCompanyEdit(@PathVariable(value = "companyId") String companyId) {
        return "admin/platform/companyInfo";
    }

    @ApiOperation(value = "管理后台平台管理员 - 用户管理 - 公司信息", notes = "管理后台平台管理员添加用户页面 需要平台管理员登录")
    @RequestMapping(value = "/warehouse/admin/home/company/{companyId}", method = RequestMethod.GET)
    public String adminCompanyInfo(@PathVariable(value = "companyId") String companyId) {
        return "admin/platform/companyInfo";
    }


}
