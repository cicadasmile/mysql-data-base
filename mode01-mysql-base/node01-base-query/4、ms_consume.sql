CREATE TABLE `ms_consume` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `consume_money` decimal(20,2) DEFAULT '0.00' COMMENT '消费金额',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消费表';

INSERT INTO `ms_consume` VALUES ('1', '1', '张三', '200.00', '2019-12-18 10:45:05');
INSERT INTO `ms_consume` VALUES ('2', '2', '李四', '300.00', '2019-12-18 10:45:22');
INSERT INTO `ms_consume` VALUES ('3', '3', '王五', '400.00', '2019-12-14 10:45:36');
INSERT INTO `ms_consume` VALUES ('4', '4', '赵六', '500.00', '2019-12-17 10:46:05');
INSERT INTO `ms_consume` VALUES ('5', '1', '张三', '230.00', '2019-12-10 12:46:38');
INSERT INTO `ms_consume` VALUES ('6', '2', '李四', '370.00', '2019-12-15 10:46:57');
INSERT INTO `ms_consume` VALUES ('7', '2', '李四', '390.00', '2019-12-16 10:51:53');
INSERT INTO `ms_consume` VALUES ('8', '3', '王五', '430.00', '2019-12-12 16:53:31');
INSERT INTO `ms_consume` VALUES ('9', '5', '孙七', '1120.00', '2019-12-18 15:30:35');