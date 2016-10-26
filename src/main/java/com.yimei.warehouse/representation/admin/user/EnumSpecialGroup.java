package com.yimei.warehouse.representation.admin.user;

import java.util.HashMap;
import java.util.Map;

public enum EnumSpecialGroup {
    SuperAdminGroup("GROUP00000", "系统管理员组"),
    ManageOnlineTraderGroup("GROUP00001", "港口组"),
    OnlineTraderGroup("GROUP00002", "监管员组"),
    ManageSalesmanGroup("GROUP00003", "资金方组"),
    SalesmanGroup("GROUP00004", "资金方财务组");

    public String id;
    public String name;

    EnumSpecialGroup(){}

    EnumSpecialGroup(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Map<String, EnumSpecialGroup> groups = new HashMap() {
        {
            for (EnumSpecialGroup group : EnumSpecialGroup.values()) {
                this.put(group.id, group);
            }
        }
    };

    public static EnumSpecialGroup getGroupById(String id) {
        return groups.get(id);
    }

}
