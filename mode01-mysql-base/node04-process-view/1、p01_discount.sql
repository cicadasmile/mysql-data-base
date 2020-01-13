-- 创建存储过程
DROP PROCEDURE IF EXISTS p01_discount ;
CREATE PROCEDURE p01_discount(IN consume NUMERIC(5,2),OUT payfee NUMERIC(5,2))
BEGIN
	-- 判断收费方式
	IF(consume>100.00 AND consume<=300.00) THEN
		SET payfee=consume*0.8;
	ELSEIF (consume>300.00) THEN
		SET payfee=consume*0.6;
	ELSE
		SET payfee = consume;
	END IF;
	SELECT payfee AS result;
END ;
-- 调用存储过程
CALL p01_discount(100.0,@discount);