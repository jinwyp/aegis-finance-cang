CREATE TABLE `f_warehouse_databook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `sequence` int(3) DEFAULT NULL COMMENT '顺序，例如 1 代表 网站，2 代表 安卓， 3 代表 IOS等',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典';


CREATE TABLE `f_warehouse_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `type` varchar(30) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成编号表';