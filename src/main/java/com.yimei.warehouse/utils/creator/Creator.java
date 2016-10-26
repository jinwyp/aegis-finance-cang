package com.yimei.warehouse.utils.creator;

public interface Creator<T> {

    public T create(Object source);
}
