package com.yimei.warehouse.entity.admin.user;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Table(name = "f_warehouse_userlogin_log")
@Entity
@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class UserLoginRecord implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id")
    private Long id;                                                 //主键

    @NonNull
    @Column(name = "user_id")
    private String userId;                                           //用户id

    @NonNull
    @Column(name = "username")
    private String username;                                         //登陆账号

    @NonNull
    @Column(name = "create_time")
    private Date createTime;                                         //创建时间
}
