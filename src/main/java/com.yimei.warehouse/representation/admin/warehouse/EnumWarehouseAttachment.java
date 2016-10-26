package com.yimei.warehouse.representation.admin.warehouse;

public enum EnumWarehouseAttachment {

    ;

    public String type;
    public String name;

    EnumWarehouseAttachment() {
    }

    EnumWarehouseAttachment(String type, String name) {
        this.type = type;
        this.name = name;
    }
}
