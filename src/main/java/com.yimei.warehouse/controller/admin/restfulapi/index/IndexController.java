package com.yimei.warehouse.controller.admin.restfulapi.index;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    @RequestMapping("/")
    public Object index() {
        return "hello world";
    }
}
