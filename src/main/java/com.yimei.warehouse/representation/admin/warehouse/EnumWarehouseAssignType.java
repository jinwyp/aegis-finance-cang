package com.yimei.warehouse.representation.admin.warehouse;

public enum EnumWarehouseAssignType {
    ;


    public String id;
    public String nextStep;
    public String name;

    EnumWarehouseAssignType(){};

    EnumWarehouseAssignType(String id, String nextStep, String name) {
        this.id = id;
        this.nextStep = nextStep;
        this.name = name;
    }
}
