package com.yimei.warehouse.service.admin.user;

import com.yimei.warehouse.entity.admin.user.UserLoginRecord;
import com.yimei.warehouse.repository.admin.user.AdminUserLoginRecordRepository;
import com.yimei.warehouse.representation.admin.user.*;
import com.yimei.warehouse.representation.common.result.Page;
import com.yimei.warehouse.representation.common.result.Result;
import com.yimei.warehouse.utils.DozerUtils;
import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminUserServiceImpl {
    @Autowired
    private IdentityService identityService;
    @Autowired
    private AdminGroupServiceImpl groupService;
    @Autowired
    private AdminUserLoginRecordRepository loginRecordRepository;

    /**
     * 检查是否具有系统管理员权限
     */
    public Result checkSuperAdminRight(String userId) {
        List<Group> groups = identityService.createGroupQuery().groupMember(userId).list();
        for (Group group : groups) {
            if (group.getId().equals(EnumSpecialGroup.SuperAdminGroup.id)) {
                return Result.success();
            }
        }
        return Result.error(EnumAdminUserError.只有系统管理员组成员才能执行此操作.toString());
    }

    /**
     * 获取一个用户所有组id list
     */
    public List<String> getUserGroupIdList(String userId) {
        List<String> groupIds = new ArrayList<>();
        List<Group> groupList = identityService.createGroupQuery().groupMember(userId).list();
        if (groupList != null && groupList.size() != 0) {
            for (Group group : groupList) {
                groupIds.add(group.getId());
            }
        }
        return groupIds;
    }

    /**
     * 封装 user, 从 User 到 UserObject
     */
    public UserObject changeUserObject(User user) {
        UserObject userObject = new UserObject();
        DozerUtils.copy(user, userObject);
        userObject.setUsername(identityService.getUserInfo(user.getId(), "username"));
        userObject.setPhone(identityService.getUserInfo(user.getId(), "phone"));
        userObject.setName(identityService.getUserInfo(user.getId(), "name"));
        userObject.setDepartment(identityService.getUserInfo(user.getId(), "department"));
        userObject.setGroupList(DozerUtils.copy(identityService.createGroupQuery().groupMember(user.getId()).list(), GroupObject.class));
        UserLoginRecord loginRecord = loginRecordRepository.findTopByUserIdOrderByCreateTimeDesc(user.getId());
        if (loginRecord != null) {
            userObject.setLastLoginTime(loginRecord.getCreateTime());
        }
        return userObject;
    }

    public List<UserObject> changeUserObject(List<User> userList) {
        if (userList == null || userList.size() == 0) return null;
        List<UserObject> userObjectList = new ArrayList<>();
        for (User user : userList) {
            userObjectList.add(changeUserObject(user));
        }
        return userObjectList;
    }

    /**
     * 检查手机号
     */
    public Result checkUserPhone(String phone) {
        if (StringUtils.isEmpty(phone)) return Result.success();
        List<UserObject> userObjectList = changeUserObject(identityService.createUserQuery().list());
        for (UserObject user : userObjectList) {
            if (!StringUtils.isEmpty(user.getPhone()) && user.getPhone().equals(phone))
                return Result.error(EnumAdminUserError.此手机号已经存在.toString());
        }
        return Result.success();
    }

    public Result checkUserPhone(String phone, String userId) {
        if (StringUtils.isEmpty(phone)) return Result.success();
        List<UserObject> userObjectList = changeUserObject(identityService.createUserQuery().list());
        for (UserObject user : userObjectList) {
            if (!StringUtils.isEmpty(user.getPhone()) && user.getPhone().equals(phone) && !user.getId().equals(userId))
                return Result.error(EnumAdminUserError.此手机号已经存在.toString());
        }
        return Result.success();
    }

    /**
     * 检查邮箱
     */
    public Result checkUserEmail(String email) {
        if (StringUtils.isEmpty(email)) return Result.error(EnumAdminUserError.邮箱不能为空.toString());
        User emailUser = identityService.createUserQuery().userEmail(email).singleResult();
        if (emailUser != null) return Result.error(EnumAdminUserError.此邮箱已经存在.toString());
        return Result.success();
    }

    public Result checkUserEmail(String email, String userId) {
        if (StringUtils.isEmpty(email)) return Result.error(EnumAdminUserError.邮箱不能为空.toString());
        User emailUser = identityService.createUserQuery().userEmail(email).singleResult();
        if (emailUser != null && !emailUser.getId().equals(userId))
            return Result.error(EnumAdminUserError.此邮箱已经存在.toString());
        return Result.success();
    }

    public String securePassword(String password) {
        return DigestUtils.md5Hex("$&*" + DigestUtils.md5Hex("@." + password + "$*************") + "!@#%……&");
    }


    /**
     * 用户管理 - 搜索查询 列表
     */
    public Result getUserListBySelect(String operateUserId, AdminUserSearch userSearch, Page page) {
        if (userSearch == null) {
            page.setTotal(identityService.createUserQuery().count());
            return Result.success().setData(identityService.createUserQuery().listPage(page.getOffset(), page.getCount())).setMeta(page);
        } else {
            List<User> userList = new ArrayList<>();
            List<UserObject> userObjectList = new ArrayList<>();
            List<UserObject> userObjList = new ArrayList<>();
            if (!StringUtils.isEmpty(userSearch.getUsername()) && !StringUtils.isEmpty(userSearch.getGroupId())) {
                userList = identityService.createUserQuery().userFirstNameLike(userSearch.getUsername()).memberOfGroup(userSearch.getGroupId()).orderByUserId().list();
            } else if (!StringUtils.isEmpty(userSearch.getUsername())) {
                userList = identityService.createUserQuery().userFirstNameLike(userSearch.getUsername()).list();
            } else if (!StringUtils.isEmpty(userSearch.getGroupId())) {
                userList = identityService.createUserQuery().memberOfGroup(userSearch.getGroupId()).list();
            } else {
                userList = identityService.createUserQuery().list();
            }
            userObjectList = changeUserObject(userList);
            if (!StringUtils.isEmpty(userSearch.getName())) {
                for (UserObject user : userObjectList) {
                    if (user.getName() != null && user.getName().contains(userSearch.getName())) {
                        userObjList.add(user);
                    }
                }
                if (userObjList == null) {
                    return Result.success();
                } else {
                    page.setTotal((long) userObjList.size());
                    int toIndex = page.getPage() * page.getCount() < userObjList.size() ? page.getPage() * page.getCount() : userObjList.size();
                    return Result.success().setData(userObjList.subList(page.getOffset(), toIndex)).setMeta(page);
                }
            } else {
                if (userObjectList == null) {
                    return Result.success();
                } else {
                    page.setTotal(Long.valueOf(userObjectList.size()));
                    int toIndex = page.getPage() * page.getCount() < userObjectList.size() ? page.getPage() * page.getCount() : userObjectList.size();
                    return Result.success().setData(userObjectList.subList(page.getOffset(), toIndex)).setMeta(page);
                }
            }
        }
    }

}