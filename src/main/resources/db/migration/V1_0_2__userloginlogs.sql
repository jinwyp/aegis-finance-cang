
CREATE TABLE `a_warehouse_userlogin_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `user_id` varchar(30) NOT NULL COMMENT '用户id',
  `username` varchar(30) NOT NULL COMMENT '用户登录名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登陆日志表';
