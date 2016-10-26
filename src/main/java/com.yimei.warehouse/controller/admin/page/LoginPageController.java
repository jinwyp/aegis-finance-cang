package com.yimei.warehouse.controller.admin.page;

import com.yimei.warehouse.config.session.AdminSession;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Api(tags = {"admin-page"}, description = "管理后台登陆, 退出等页面")
@Controller
public class LoginPageController {
    @Autowired
    private AdminSession adminSession;

    @ApiOperation(value = "管理后台首页跳转", notes = "管理后台首页跳转 没有登录调转到登录页面, 如果登录了跳转到管理员Home页面")
    @RequestMapping(value = "/warehouse/admin", method = RequestMethod.GET)
    public String indexPage() {
        if (adminSession.getUser() == null) {
            return "redirect:/warehouse/admin/login";
        }
        return "redirect:/warehouse/admin/home";
    }

    @ApiOperation(value = "管理后台登陆页面", notes = "管理后台登陆页面 不需要登录就可以访问")
    @RequestMapping(value = "/warehouse/admin/login", method = RequestMethod.GET)
    public String loginPage() {
        return "admin/login";
    }


}