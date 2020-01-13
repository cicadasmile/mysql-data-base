CREATE TABLE `t03_proced` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `temp_name` varchar(20) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器写数据';