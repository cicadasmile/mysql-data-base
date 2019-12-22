CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `deptName` varchar(30) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `mysql-base`.`tb_dept` (`id`, `deptName`) VALUES ('1', '技术部');
INSERT INTO `mysql-base`.`tb_dept` (`id`, `deptName`) VALUES ('2', '市场部');
INSERT INTO `mysql-base`.`tb_dept` (`id`, `deptName`) VALUES ('3', '营销部');
INSERT INTO `mysql-base`.`tb_dept` (`id`, `deptName`) VALUES ('4', '人事部');
INSERT INTO `mysql-base`.`tb_dept` (`id`, `deptName`) VALUES ('5', '事业部');
