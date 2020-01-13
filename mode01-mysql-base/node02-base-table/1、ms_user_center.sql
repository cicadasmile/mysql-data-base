CREATE TABLE `ms_user_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `pass_word` varchar(32) NOT NULL COMMENT '密码',
  `phone` varchar(20) NOT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `head_url` varchar(100) DEFAULT NULL COMMENT '用户头像URL',
  `card_id` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `user_sex` int(1) DEFAULT '1' COMMENT '用户性别:0-女,1-男',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(1) DEFAULT '1' COMMENT '是否可用,0-不可用,1-可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';