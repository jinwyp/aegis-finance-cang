package com.yimei.warehouse.controller.admin.restfulapi.user;

import com.yimei.warehouse.config.session.AdminSession;
import com.yimei.warehouse.representation.admin.user.EnumAdminGroupError;
import com.yimei.warehouse.representation.admin.user.EnumAdminUserError;
import com.yimei.warehouse.representation.admin.user.GroupObject;
import com.yimei.warehouse.representation.admin.user.UserObject;
import com.yimei.warehouse.representation.common.result.Page;
import com.yimei.warehouse.representation.common.result.Result;
import com.yimei.warehouse.service.admin.user.AdminGroupServiceImpl;
import com.yimei.warehouse.service.admin.user.AdminUserServiceImpl;
import io.swagger.annotations.*;
import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = {"admin-api-group"})
@RequestMapping("/api/warehouse/admin/groups")
@RestController("adminGroupController")
public class GroupController {
    @Autowired
    private IdentityService identityService;
    @Autowired
    private AdminSession adminSession;
    @Autowired
    private AdminGroupServiceImpl groupService;
    @Autowired
    private AdminUserServiceImpl userService;

    @ApiOperation(value = "查询所有的用户组", notes = "查询所有用户组列表", response = GroupObject.class, responseContainer = "List")
    @ApiImplicitParam(name = "page", value = "当前页数", required = false, dataType = "int", paramType = "query")
    @RequestMapping(method = RequestMethod.GET)
    public Result getGroupListMethod(Page page) {
        List<Group> groupList = identityService.createGroupQuery().orderByGroupId().desc().list();
        page.setTotal(Long.valueOf(groupList.size()));
        int toIndex = page.getPage() * page.getCount() < groupList.size() ? page.getPage() * page.getCount() : groupList.size();
        List<GroupObject> groupObjectList = groupService.changeGroupObject(groupList.subList(page.getOffset(), toIndex));
        return Result.success().setData(groupObjectList).setMeta(page);
    }

    @ApiOperation(value = "通过 groupId 查询用户组", notes = "通过 groupId 查询该用户组信息", response = GroupObject.class)
    @ApiImplicitParam(name = "groupId", value = "用户组 Id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{groupId}", method = RequestMethod.GET)
    public Result getGroupByIdMethod(@PathVariable("groupId") String groupId) {
        Group group = identityService.createGroupQuery().groupId(groupId).singleResult();
        if (group == null) return Result.error(EnumAdminGroupError.此组不存在.toString());
        GroupObject groupObject = groupService.changeGroupObject(group);
        return Result.success().setData(groupObject);
    }

    @ApiOperation(value = "通过 groupId 查询用户组下的用户", notes = "通过 groupId 查询该用户组下的用户", response = UserObject.class, responseContainer = "List")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupId", value = "GroupId", required = true, dataType = "String", paramType = "path"),
            @ApiImplicitParam(name = "page", value = "当前页数", required = false, dataType = "int", paramType = "query")
    })
    @RequestMapping(value = "/{groupId}/users", method = RequestMethod.GET)
    public Result getUsersByGroupIdMethod(@PathVariable(value = "groupId") String groupId, Page page) {
        if (identityService.createGroupQuery().groupId(groupId).singleResult() == null)
            return Result.error(EnumAdminGroupError.此组不存在.toString());
        List<User> userList = identityService.createUserQuery().memberOfGroup(groupId).orderByUserId().desc().list();
        page.setTotal(Long.valueOf(userList.size()));
        int toIndex = page.getPage() * page.getCount() < userList.size() ? page.getPage() * page.getCount() : userList.size();
        List<UserObject> userObjectList = userService.changeUserObject(userList.subList(page.getOffset(), toIndex));
        return Result.success().setData(userObjectList).setMeta(page);
    }

    @ApiOperation(value = "创建用户组", notes = "根据Group对象创建用户组", response = GroupObject.class)
    @RequestMapping(method = RequestMethod.POST)
    public Result addGroupMethod(@ApiParam(name = "group", value = "用户组对象", required = true) @Validated @RequestBody GroupObject groupObject) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        if (StringUtils.isEmpty(groupObject.getName())) return Result.error(EnumAdminGroupError.组名称不能为空.toString());
        if (identityService.createGroupQuery().groupName(groupObject.getName()).singleResult() != null)
            return Result.error(EnumAdminGroupError.已经存在名称相同的组.toString());
        Group group = identityService.newGroup("");
        group.setId(null);
        group.setName(groupObject.getName());
        group.setType(groupObject.getType());
        identityService.saveGroup(group);
        return Result.success().setData(groupService.changeGroupObject(identityService.createGroupQuery().groupId(group.getId()).singleResult()));
    }

    @ApiOperation(value = "将一个用户添加到指定的组", notes = "将一个用户添加到指定的组", response = UserObject.class)
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupId", value = "Group 用户组Id", required = true, dataType = "String", paramType = "path"),
            @ApiImplicitParam(name = "userId", value = "User 用户Id", required = true, dataType = "String", paramType = "path")
    })
    @RequestMapping(value = "/{groupId}/users/{userId}", method = RequestMethod.POST)
    public Result addUserToGroupMethod(@PathVariable("groupId") String groupId,
                                       @PathVariable("userId") String userId) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        Group group1 = identityService.createGroupQuery().groupId(groupId).singleResult();
        if (group1 == null) return Result.error(EnumAdminGroupError.此组不存在.toString());
        User user = identityService.createUserQuery().userId(userId).singleResult();
        if (user == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        List<Group> groupList = identityService.createGroupQuery().groupMember(userId).list();
        for (Group group2 : groupList) {
            if (group2.getId().equals(groupId)) return Result.error(EnumAdminGroupError.该用户已经在此组中.toString());
        }
        identityService.createMembership(userId, groupId);
        return Result.success().setData(userService.changeUserObject(user));
    }

    @ApiOperation(value = "将一个用户从指定的组移出", notes = "将一个用户从指定的组移出", response = GroupObject.class)
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupId", value = "Group 用户组Id", required = true, dataType = "String", paramType = "path"),
            @ApiImplicitParam(name = "userId", value = "User 用户Id", required = true, dataType = "String", paramType = "path")
    })
    @RequestMapping(value = "/{groupId}/users/{userId}", method = RequestMethod.DELETE)
    public Result deleteUserFromGroupMethod(@PathVariable("groupId") String groupId,
                                            @PathVariable("userId") String userId) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        Group group1 = identityService.createGroupQuery().groupId(groupId).singleResult();
        if (group1 == null) return Result.error(EnumAdminGroupError.此组不存在.toString());
        User user = identityService.createUserQuery().userId(userId).singleResult();
        if (user == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        List<Group> groupList = identityService.createGroupQuery().groupMember(userId).list();
        for (Group group2 : groupList) {
            if (group2.getId().equals(groupId)) {
                identityService.deleteMembership(userId, groupId);
                return Result.success().setData(userService.changeUserObject(user));
            }
        }
        return Result.error(EnumAdminGroupError.该用户并不在此组中.toString());
    }

    @ApiOperation(value = "修改用户组", notes = "根据Group Id 修改用户组", response = GroupObject.class)
    @ApiImplicitParam(name = "id", value = "Group 用户组id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public Result updateGroupMethod(@PathVariable("id") String id,
                                    @ApiParam(name = "group", value = "用户组对象", required = true) @Validated @RequestBody GroupObject groupObject) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        if (StringUtils.isEmpty(id)) return Result.error(EnumAdminGroupError.组id不能为空.toString());
        if (groupObject == null) return Result.error(EnumAdminGroupError.组对象不能为空.toString());
        Group group = identityService.createGroupQuery().groupId(id).singleResult();
        if (group == null) return Result.error(EnumAdminGroupError.此组不存在.toString());
        group.setName(groupObject.getName());
        group.setType(groupObject.getType());
        identityService.saveGroup(group);
        return Result.success().setData(groupService.changeGroupObject(identityService.createGroupQuery().groupId(id).singleResult()));
    }

    @ApiOperation(value = "删除用户组", notes = "根据Group Id 删除用户组", response = GroupObject.class)
    @ApiImplicitParam(name = "id", value = "Group 用户组Id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public Result deleteGroupMethod(@PathVariable("id") String id) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        Group group = identityService.createGroupQuery().groupId(id).singleResult();
        if (group == null) return Result.error(EnumAdminGroupError.此组不存在.toString());
        GroupObject groupObject = groupService.changeGroupObject(group);
        identityService.deleteGroup(id);
        return Result.success().setData(groupObject);
    }


}