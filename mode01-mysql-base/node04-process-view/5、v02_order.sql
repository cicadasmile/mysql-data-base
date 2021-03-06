CREATE TABLE v02_order (
	id INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
	user_id INT(11) NOT NULL COMMENT '用户ID',
	order_no VARCHAR(32) DEFAULT NULL COMMENT '订单编号',
	good_name VARCHAR(60) DEFAULT NULL COMMENT '商品名称',
	good_id INT(11) DEFAULT NULL COMMENT '商品ID',
	num INT(11) DEFAULT NULL COMMENT '购买数量',
	total_price DECIMAL(10,2) DEFAULT NULL COMMENT '总价格',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '订单表';