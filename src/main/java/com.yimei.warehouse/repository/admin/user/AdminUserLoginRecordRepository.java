package com.yimei.warehouse.repository.admin.user;


import com.yimei.warehouse.entity.admin.user.UserLoginRecord;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminUserLoginRecordRepository extends JpaRepository<UserLoginRecord, Long> {

    UserLoginRecord findTopByUserIdOrderByCreateTimeDesc(String userId);
}
