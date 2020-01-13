DROP PROCEDURE IF EXISTS p02_batch_add ;
CREATE PROCEDURE p02_batch_add(IN count INT(11))
BEGIN
	DECLARE temp int default 0;
	WHILE temp < count DO
		INSERT INTO t03_proced(temp_name) VALUES ('pro_name');
		SET temp = temp+1 ;
	END WHILE;
END ;

-- 测试：写入10条数据
call p02_batch_add(10);