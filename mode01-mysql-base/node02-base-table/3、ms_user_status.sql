CREATE TABLE `ms_user_status` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `account_status` int(1) DEFAULT '1' COMMENT '账户状态：0-冻结,1-未冻结',
  `real_name_status` int(1) DEFAULT '0' COMMENT '实名认证状态：0-未实名,1-已实名',
  `pay_pass_status` int(1) DEFAULT '0' COMMENT '支付密码是否设置：0-未设置,1-设置',
  `wallet_pass_status` int(1) DEFAULT '0' COMMENT '钱包密码是否设置：0-未设置,1-设置',
  `wallet_status` int(1) DEFAULT '1' COMMENT '钱包是否冻结:0-冻结,1-未冻结',
  `email_status` int(1) DEFAULT '0' COMMENT '邮箱状态:0-未激活,1-激活',
  `message_status` int(1) DEFAULT '1' COMMENT '短信提醒开启：0-未开启,1-开启',
  `letter_status` int(1) DEFAULT '1' COMMENT '站内信提醒开启：0-未开启,1-开启',
  `emailmsg_status` int(1) DEFAULT '0' COMMENT '邮件提醒开启：0-未开启,1-开启',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(1) DEFAULT '1' COMMENT '是否可用,0-不可用,1-可用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户状态表';