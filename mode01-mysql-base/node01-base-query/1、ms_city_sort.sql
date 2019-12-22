CREATE TABLE `ms_city_sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_name` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
  `city_code` varchar(50) NOT NULL DEFAULT '' COMMENT '城市编码',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态：1启用,2停用',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='城市分类管理';

INSERT INTO `ms_city_sort` VALUES ('1', '北京', '0001', '0', '1', '2019-12-03 11:41:04', '2019-12-03 11:41:07');
INSERT INTO `ms_city_sort` VALUES ('2', '上海', '0002', '0', '1', '2019-12-03 11:41:18', '2019-12-03 11:41:18');
INSERT INTO `ms_city_sort` VALUES ('3', '浙江省', '0003', '0', '1', '2019-12-03 11:41:41', '2019-12-03 11:41:41');
INSERT INTO `ms_city_sort` VALUES ('4', '杭州市', '0103', '3', '1', '2019-12-03 11:42:06', '2019-12-03 11:42:06');
INSERT INTO `ms_city_sort` VALUES ('5', '安徽省', '0004', '0', '1', '2019-12-03 11:42:16', '2019-12-03 11:42:16');
INSERT INTO `ms_city_sort` VALUES ('6', '合肥市', '0104', '5', '1', '2019-12-03 11:42:53', '2019-12-03 11:42:53');
INSERT INTO `ms_city_sort` VALUES ('7', '西湖区', '0101', '4', '1', '2019-12-17 09:19:04', '2019-12-17 09:19:04');
INSERT INTO `ms_city_sort` VALUES ('8', '政务区', '0102', '6', '1', '2019-12-17 09:19:43', '2019-12-17 09:19:43');
INSERT INTO `ms_city_sort` VALUES ('9', '蜀山区', '0103', '6', '1', '2019-12-17 10:02:05', '2019-12-17 10:02:05');