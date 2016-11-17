package com.yimei.warehouse.controller.admin.page;

import com.yimei.warehouse.config.session.AdminSession;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Api(tags = {"admin-page"}, description = "管理后台首页")
@Controller
public class HomePageController {
    @Autowired
    private AdminSession adminSession;

    /**
     * 后台管理首页 页面
     */

    @ApiOperation(value = "管理后台登陆页面", notes = "管理后台登陆页面 不需要登录就可以访问")
    @RequestMapping(value = "/warehouse/admin/login", method = RequestMethod.GET)
    public String adminLogin() {
        return "admin/login";
    }


    @ApiOperation(value = "管理后台管理员首页", notes = "管理后台管理员首页 需要管理员登录")
    @RequestMapping(value = "/warehouse/admin/home", method = RequestMethod.GET)
    public String adminHome() {
        if (adminSession.getUser() == null) {
            return "redirect:/warehouse/admin/login";
        }
        return "admin/home";
    }

    @ApiOperation(value = "管理后台前端路由重定向", notes = "管理页面为了前端路由需要重定向")
    @RequestMapping(value = "/warehouse/admin/home/**", method = RequestMethod.GET)
    public String adminHomeRedirect() {
        if (adminSession.getUser() == null) {
            return "redirect:/warehouse/admin/login";
        }
        return "forward:/warehouse/admin/home";
    }


    @ApiOperation(value = "管理后台首页跳转", notes = "管理后台首页跳转 没有登录调转到登录页面, 如果登录了跳转到管理员Home页面")
    @RequestMapping(value = "/warehouse/admin", method = RequestMethod.GET)
    public String adminIndexRedirect() {
        if (adminSession.getUser() == null) {
            return "redirect:/warehouse/admin/login";
        }
        return "redirect:/warehouse/admin/home";
    }





    @ApiOperation(value = "管理后台form页面", notes = "管理后台form页面")
    @RequestMapping(value = "/warehouse/admin/form", method = RequestMethod.GET)
    public String formPage() {
        return "admin/home";
    }


    @ApiOperation(value = "管理后台list页面", notes = "管理后台list页面")
    @RequestMapping(value = "/warehouse/admin/listPage", method = RequestMethod.GET)
    public String listPage() {
        return "admin/listPage";
    }

}
