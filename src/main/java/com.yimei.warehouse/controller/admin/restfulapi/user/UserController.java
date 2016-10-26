package com.yimei.warehouse.controller.admin.restfulapi.user;

import com.yimei.warehouse.config.session.AdminSession;
import com.yimei.warehouse.exception.BusinessException;
import com.yimei.warehouse.repository.common.DataBookRepository;
import com.yimei.warehouse.representation.admin.user.*;
import com.yimei.warehouse.representation.admin.user.validated.CreateUser;
import com.yimei.warehouse.representation.admin.user.validated.EditUser;
import com.yimei.warehouse.representation.common.result.Page;
import com.yimei.warehouse.representation.common.result.Result;
import com.yimei.warehouse.service.admin.user.AdminGroupServiceImpl;
import com.yimei.warehouse.service.admin.user.AdminUserServiceImpl;
import com.yimei.warehouse.service.common.message.MessageServiceImpl;
import com.yimei.warehouse.utils.CodeUtils;
import com.yimei.warehouse.utils.DozerUtils;
import io.swagger.annotations.*;
import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = {"admin-api-user"}, description = "用户增删改查接口")
@RequestMapping("/api/warehouse/admin/users")
@RestController("adminUserController")
public class UserController {
    @Autowired
    private DataBookRepository dataBookRepository;
    @Autowired
    private IdentityService identityService;
    @Autowired
    private AdminUserServiceImpl userService;
    @Autowired
    private AdminGroupServiceImpl groupService;
    @Autowired
    private MessageServiceImpl messageService;
    @Autowired
    private AdminSession adminSession;

    @RequestMapping(method = RequestMethod.GET)
    @ApiOperation(value = "查询所有用户", notes = "查询所有用户列表", response = UserObject.class, responseContainer = "List")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户账号", required = false, defaultValue = "", dataType = "String", paramType = "query"),
            @ApiImplicitParam(name = "name", value = "用户姓名", required = false, defaultValue = "", dataType = "String", paramType = "query"),
            @ApiImplicitParam(name = "groupName", value = "组名", required = false, defaultValue = "", dataType = "String", paramType = "query"),
            @ApiImplicitParam(name = "page", value = "当前页数", required = false, defaultValue = "1", dataType = "int", paramType = "query")
    })
    public Result getAllUsersMethod(AdminUserSearch userSearch, Page page) {
        return userService.getUserListBySelect(adminSession.getUser().getId(), userSearch, page);
    }

    @ApiOperation(value = "查询单个用户", notes = "根据id查询用户对象", response = UserObject.class)
    @ApiImplicitParam(name = "id", value = "用户id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Result getUserByIdMethod(@PathVariable("id") String id) {
        User user = identityService.createUserQuery().userId(id).singleResult();
        if (user == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        return Result.success().setData(userService.changeUserObject(user));
    }

    @ApiOperation(value = "查询用户所在的组", notes = "查询某个用户所在的组", response = GroupObject.class, responseContainer = "List")
    @ApiImplicitParam(name = "id", value = "用户id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}/groups", method = RequestMethod.GET)
    public Result getUserGroupsMethod(@PathVariable("id") String id, Page page) {
        if (identityService.createUserQuery().userId(id).singleResult() == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        page.setTotal(identityService.createGroupQuery().groupMember(id).count());
        List<GroupObject> groupObjectList = groupService.changeGroupObject(identityService.createGroupQuery().groupMember(id).list());
        return Result.success().setData(groupObjectList).setMeta(page);
    }

    @ApiOperation(value = "创建用户", notes = "根据User对象创建用户", response = UserObject.class)
    @RequestMapping(method = RequestMethod.POST)
    @Transactional
    public Result addUserMethod(@ApiParam(name = "user", value = "用户对象", required = true) @Validated(value = {CreateUser.class}) @RequestBody UserObject user) {
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        if (identityService.createUserQuery().userFirstName(user.getUsername()).singleResult() != null) return Result.error(EnumAdminUserError.此登录名已经存在.toString());
        Result result1 = userService.checkUserEmail(user.getEmail());
        if (!result1.isSuccess()) return result1;
        Result result2 = userService.checkUserPhone(user.getPhone());
        if (!result2.isSuccess()) return result2;
        User newUser = identityService.newUser("");
        DozerUtils.copy(user, newUser);
        newUser.setId(null);
        newUser.setFirstName(user.getUsername());
        String password = CodeUtils.CreateNumLetterCode();
        newUser.setPassword(userService.securePassword(password));
        newUser.setEmail(user.getEmail());
        identityService.saveUser(newUser);
        identityService.setUserInfo(newUser.getId(), "username", user.getUsername());
        identityService.setUserInfo(newUser.getId(), "name", user.getName());
        identityService.setUserInfo(newUser.getId(), "phone", user.getPhone());
        identityService.setUserInfo(newUser.getId(), "department", user.getDepartment());
        addUserGroupMemberShip(newUser.getId(), user.getGroupIds());
        String subject = "开通账户通知邮件";
        String content = "你好: 你的账号已开通, 用户名:" + user.getUsername() + ", 初始密码:" + password + ", 请修改密码. [易煤网金融系统]";
        messageService.sendSimpleMail(user.getEmail(), subject, content);
        return Result.success().setData(userService.changeUserObject(identityService.createUserQuery().userId(newUser.getId()).singleResult()));
    }

    @ApiOperation(value = "删除用户", notes = "根据 UserId 删除用户", response = UserObject.class)
    @ApiImplicitParam(name = "id", value = "用户id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public Result deleteUserMethod(@PathVariable("id") String id) {
        User user = identityService.createUserQuery().userId(id).singleResult();
        if (user == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        UserObject userObject = DozerUtils.copy(user, UserObject.class);
        identityService.deleteUser(id);
        return Result.success().setData(userObject);
    }

    @ApiOperation(value = "修改用户信息", notes = "根据 User Id修改用户", response = UserObject.class)
    @ApiImplicitParam(name = "id", value = "用户id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    @Transactional
    public Result updateUserInfoMethod(@PathVariable("id") String id,
                                       @ApiParam(name = "user", value = "用户对象", required = true) @Validated(value = {EditUser.class}) @RequestBody UserObject user) {
        if (StringUtils.isEmpty(id)) return Result.error(EnumAdminUserError.用户id不能为空.toString());
        User oldUser = identityService.createUserQuery().userId(id).singleResult();
        if (oldUser == null) return Result.error(EnumAdminUserError.此用户不存在.toString());
        Result result = userService.checkSuperAdminRight(adminSession.getUser().getId());
        if (!result.isSuccess()) return result;
        Result result1 = userService.checkUserEmail(user.getEmail(), id);
        if (!result1.isSuccess()) return result1;
        Result result2 = userService.checkUserPhone(user.getPhone(), oldUser.getId());
        if (!result2.isSuccess()) return result2;
        oldUser.setEmail(user.getEmail());
        identityService.saveUser(oldUser);
        identityService.setUserInfo(oldUser.getId(), "name", user.getName());
        identityService.setUserInfo(oldUser.getId(), "phone", user.getPhone());
        identityService.setUserInfo(oldUser.getId(), "department", user.getDepartment());
        addUserGroupMemberShip(oldUser.getId(), user.getGroupIds());
        return Result.success().setData(userService.changeUserObject(identityService.createUserQuery().userId(id).singleResult()));
    }

    @ApiOperation(value = "用户自己修改信息", notes = "用户自己修改信息", response = UserObject.class)
    @RequestMapping(value = "/self", method = RequestMethod.PUT)
    public Result updateUserSelfInfoMethod(@ApiParam(name = "user", value = "用户对象", required = true) @Validated(value = {EditUser.class}) @RequestBody UserObject user) {
        Result result1 = userService.checkUserEmail(user.getEmail(), adminSession.getUser().getId());
        if (!result1.isSuccess()) return result1;
        Result result2 = userService.checkUserPhone(user.getPhone(), adminSession.getUser().getId());
        if (!result2.isSuccess()) return result2;
        User oldUser = identityService.createUserQuery().userId(adminSession.getUser().getId()).singleResult();
        oldUser.setEmail(user.getEmail());
        identityService.saveUser(oldUser);
        identityService.setUserInfo(oldUser.getId(), "name", user.getName());
        identityService.setUserInfo(oldUser.getId(), "phone", user.getPhone());
        identityService.setUserInfo(oldUser.getId(), "department", user.getDepartment());
        UserObject userObject = userService.changeUserObject(identityService.createUserQuery().userId(adminSession.getUser().getId()).singleResult());
        adminSession.login(userObject);
        return Result.success().setData(userObject);
    }

    @ApiOperation(value = "管理员帮助用户重置密码", notes = "管理员帮助用户重置密码, 生成随机密码, 发送到用户邮箱.", response = Boolean.class)
    @ApiImplicitParam(name = "id", value = "用户id", required = true, dataType = "String", paramType = "path")
    @RequestMapping(value = "/{id}/password", method = RequestMethod.POST)
    public Result resetUserPasswordMethod(@PathVariable("id")String id) {
        User user = identityService.createUserQuery().userId(id).singleResult();
        String subject = "重置密码邮件";
        String password = CodeUtils.CreateNumLetterCode();
        user.setPassword(userService.securePassword(password));
        identityService.saveUser(user);
        String content = "你好: " + user.getFirstName() + ", 管理员为你重置密码, 新密码是: " + password + " . [易煤网金融系统]";
        messageService.sendSimpleMail(user.getEmail(), subject, content);
        return Result.success().setData(true);
    }

    @ApiOperation(value = "用户自己修改密码", notes = "用户自己修改密码", response = Boolean.class)
    @RequestMapping(value = "/self/password", method = RequestMethod.PUT)
    public Result resetUserPasswordMethod(@ApiParam(name = "user", value = "用户密码") @Validated @RequestBody UserPasswordObject userObject) {
        if (!identityService.checkPassword(adminSession.getUser().getId(), userService.securePassword(userObject.getOldPassword()))) {
            return Result.error(EnumAdminUserError.原密码不正确.toString());
        } else if (userService.securePassword(userObject.getNewPassword()).equals(identityService.createUserQuery().userId(adminSession.getUser().getId()).singleResult().getPassword())) {
            return Result.error(EnumAdminUserError.新密码和原密码一样.toString());
        } else {
            User user = identityService.createUserQuery().userId(adminSession.getUser().getId()).singleResult();
            user.setPassword(userService.securePassword(userObject.getNewPassword()));
            identityService.saveUser(user);
            return Result.success().setData(true);
        }
    }

    @Transactional
    public void addUserGroupMemberShip(String userId, List<String> groupIds) {
        List<Group> groupList = identityService.createGroupQuery().groupMember(userId).list();
        if (groupList != null && groupList.size() != 0) {
            for (Group group : groupList) {
                identityService.deleteMembership(userId, group.getId());
            }
        }
        if (groupIds != null && groupIds.size() != 0) {
            for (String gid : groupIds) {
                if (identityService.createGroupQuery().groupId(gid).singleResult() == null)
                    throw new BusinessException(EnumAdminGroupError.此组不存在.toString());
                identityService.createMembership(userId, gid);
            }
        }
    }

}