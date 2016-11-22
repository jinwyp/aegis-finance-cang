package com.yimei.warehouse.controller.admin.common;

import com.yimei.warehouse.repository.common.DataBookRepository;
import com.yimei.warehouse.representation.common.enums.EnumCommonError;
import com.yimei.warehouse.representation.common.file.AttachmentObject;
import com.yimei.warehouse.representation.common.result.Result;
import com.yimei.warehouse.service.common.file.LocalStorage;
import com.yimei.warehouse.utils.DozerUtils;
import com.yimei.warehouse.utils.StoreUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Attachment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Api(value = "admin-api-tools", description = "公用工具接口")
@RequestMapping("/api/warehouse/admin")
@RestController("adminCommonToolsController")
public class ToolsController {
    @Autowired
    private DataBookRepository dataBookRepository;
    @Autowired
    private LocalStorage localStorage;
    @Autowired
    private TaskService taskService;

    @RequestMapping(value = "/files", method = RequestMethod.POST)
    @ApiOperation(value = "上传文件", notes = "上传文件", response = AttachmentObject.class)
    @ApiImplicitParam(name = "file", value = "文件", required = true, dataType = "file", paramType = "query")
    public Result uploadFileMethod(@RequestParam("file") MultipartFile file) throws IOException {
        return Result.success().setData(StoreUtils.save(localStorage, file, "warehouse"));
    }

    @RequestMapping(value = "/files/{attachmentId}", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除文件", notes = "删除文件", response = AttachmentObject.class)
    @ApiImplicitParam(name = "attachmentId", value = "文件id", required = true, dataType = "string", paramType = "path")
    public Result deleteFileMethod(@PathVariable("attachmentId")String attachmentId) {
        Attachment attachment = taskService.getAttachment(attachmentId);
        if (attachment == null) return Result.error(EnumCommonError.此文件不存在.toString());
        taskService.deleteAttachment(attachmentId);
        return Result.success().setData(DozerUtils.copy(taskService.getAttachment(attachmentId), AttachmentObject.class));
    }




}
