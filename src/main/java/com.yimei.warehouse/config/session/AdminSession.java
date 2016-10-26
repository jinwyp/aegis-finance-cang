package com.yimei.warehouse.config.session;

import com.yimei.warehouse.representation.admin.user.UserObject;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class AdminSession implements Serializable {
    protected UserObject user;

    public UserObject getUser() {
        return user;
    }

    public boolean login(UserObject user) {
        this.user = user;
        return true;
    }

    public boolean isLogined() {
        return this.user != null;
    }

    public void logout() {
        this.user = null;
    }

}