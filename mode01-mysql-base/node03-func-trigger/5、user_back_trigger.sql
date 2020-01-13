-- 触发器程序
DROP TRIGGER IF EXISTS user_back_trigger ;
CREATE TRIGGER user_back_trigger AFTER INSERT ON t01_user FOR EACH ROW
BEGIN
	INSERT INTO t02_back (id,user_name)
VALUES (new.id,new.user_name);
END ;

-- 测试案例
INSERT INTO t01_user (user_name) VALUES ('smile'),('mysql') ;
SELECT * FROM t02_back ;