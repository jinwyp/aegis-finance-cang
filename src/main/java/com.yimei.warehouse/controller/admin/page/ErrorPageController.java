package com.yimei.warehouse.controller.admin.page;

import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Api(tags={"admin-page-error"})
@Controller("adminErrorPageController")
public class ErrorPageController {

    @RequestMapping(value = "/warehouse/admin/404", method = RequestMethod.GET)
    public String Page404() {
        return "admin/http/404";
    }


    @RequestMapping(value = "/warehouse/admin/500", method = RequestMethod.GET)
    public String Page500() {
        return "admin/http/500";
    }

}
