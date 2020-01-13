CREATE TABLE `ms_user_sso` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `sso_id` varchar(32) NOT NULL COMMENT '单点信息编号ID',
  `sso_code` varchar(32) NOT NULL COMMENT '单点登录码,唯一核心标识',
  `log_ip` varchar(32) DEFAULT NULL COMMENT '登录IP地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(1) DEFAULT '1' COMMENT '是否可用,0-不可用,1-可用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户单点登录表';