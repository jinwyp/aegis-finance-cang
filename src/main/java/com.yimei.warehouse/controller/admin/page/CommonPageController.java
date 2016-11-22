package com.yimei.warehouse.controller.admin.page;

import com.yimei.warehouse.exception.NotFoundException;
import com.yimei.warehouse.representation.common.result.Result;
import com.yimei.warehouse.service.common.file.LocalStorage;
import com.yimei.warehouse.service.common.message.MessageServiceImpl;
import com.yimei.warehouse.utils.WebUtils;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@RequestMapping("/warehouse/admin")
@Controller("adminCommonPageController")
public class CommonPageController {
    @Autowired
    private LocalStorage localStorage;
    @Autowired
    private MessageServiceImpl messageService;

    @RequestMapping(value = "/files", method = RequestMethod.GET)
    @ApiOperation(value = "下载文件", notes = "通过文件url路径下载文件")
    @ApiImplicitParam(name = "url", value = "文件路径", required = true, dataType = "string", paramType = "query")
    public void adminDownloadFile(@RequestParam(value = "url", required = true) String url, HttpServletResponse response) {
        try {
            if (url != null && url.startsWith("/files/")) {
                File file = new File(localStorage.getServerFileRootPath(), url.substring("/files/".length()));
                WebUtils.doDownloadFile(file, response);
            }
        } catch (IOException e) {
            throw new NotFoundException();
        }
    }

    @RequestMapping(value = "/test/email", method = RequestMethod.GET)
    @ApiImplicitParam(name = "email", value = "邮箱", required = true, dataType = "string", paramType = "query")
    @ResponseBody
    public Result testEmail(@RequestParam("email") String email) {
        System.out.println(" ------------------------------ " + email);
        System.out.println(" ------------------------------ " + email);
        System.out.println(" ------------------------------ " + email);
        System.out.println(" ------------------------------ " + email);
        System.out.println(" ------------------------------ " + email);
        System.out.println(" ------------------------------ " + email);
        String subject = "测试邮件";
        String content = "测试 --------------- 你好: 你的账号已开通, 用户名 请修改密码. [易煤网金融系统]";
        messageService.sendSimpleMail(email, subject, content);

        return Result.success();
    }


}
