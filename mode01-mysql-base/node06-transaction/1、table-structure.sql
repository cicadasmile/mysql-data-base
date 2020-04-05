CREATE TABLE `dc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `tell_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE `dc_user_info` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

CREATE TABLE `dc_user_in01` (
  `id` int(11) DEFAULT NULL COMMENT 'id',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `tell_phone` varchar(20) DEFAULT NULL COMMENT '手机号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE `dc_user_in02` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `tell_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE `dc_gap` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id_index` int(11) NOT NULL COMMENT 'index',
  PRIMARY KEY (`id`),
  KEY `id_index` (`id_index`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='间隙表';
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('1', '2');
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('3', '4');
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('6', '7');
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('8', '7');
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('9', '9');