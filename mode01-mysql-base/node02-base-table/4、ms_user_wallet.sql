CREATE TABLE `ms_user_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱包ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `wallet_pwd` varchar(32) DEFAULT NULL COMMENT '钱包密码',
  `total_account` decimal(20,2) DEFAULT '0.00' COMMENT '账户总额',
  `usable_money` decimal(20,2) DEFAULT '0.00' COMMENT '可用余额',
  `freeze_money` decimal(20,2) DEFAULT '0.00' COMMENT '冻结金额',
  `freeze_time` datetime DEFAULT NULL COMMENT '冻结时间',
  `thaw_time` datetime DEFAULT NULL COMMENT '解冻时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(1) DEFAULT '1' COMMENT '是否可用,0-不可用,1-可用',
  PRIMARY KEY (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户钱包';