-- ## 共享读锁测试

-- 会话窗口一

-- 1、加读锁
LOCK TABLE dc_user READ ;
-- 2、当前会话查询，OK
SELECT * FROM dc_user ;
-- 4、当前会话写入，Error
INSERT INTO dc_user (user_name,tell_phone) VALUES ('lock01','13267788998');
-- 6、查询其他表,Error
SELECT * FROM dc_user_info ;
-- 7、释放锁
UNLOCK TABLES ;

-- 会话窗口二

-- 3、其他会话查询，OK
SELECT * FROM dc_user ;
-- 5、其他会话写入，Error
INSERT INTO dc_user (user_name,tell_phone) VALUES ('lock01','13267788998');
-- 8、再次执行写入读取，OK
INSERT INTO dc_user (user_name,tell_phone) VALUES ('lock01','13267788998');
SELECT * FROM dc_user ;

-- ## 无索引结构表

-- 会话窗口一

-- 1、关闭自动提交
SET AUTOCOMMIT = 0 ;
-- 2、查询id=1，OK
SELECT * FROM dc_user_in01 WHERE id=1 ;
-- 3、添加写锁失败
SELECT * FROM dc_user_in01
WHERE id=1 FOR UPDATE ;
-- 4、恢复事务提交
SET AUTOCOMMIT = 1 ;

-- 会话窗口二

-- 1、关闭自动提交
SET AUTOCOMMIT = 0 ;
-- 2、查询id=2，OK
SELECT * FROM dc_user_in01 WHERE id=2 ;
-- 3、写入失败(等待)
INSERT INTO dc_user_in01 (id,user_name,tell_phone)
VALUES (3,'lock01','13267788998');
-- 4、写锁失败(等待)
SELECT * FROM dc_user_in01
WHERE id=2 FOR UPDATE ;
-- 5、恢复事务提交
SET AUTOCOMMIT=1 ;

-- ## 索引结构表

-- 会话窗口一

-- 1、关闭自动提交
SET AUTOCOMMIT = 0 ;
-- 2、查询id=1，OK
SELECT * FROM dc_user_in02 WHERE id=1 ;
-- 3、添加写锁成功
SELECT * FROM dc_user_in02 WHERE id=1 FOR UPDATE ;
-- 执行到这里，再执行窗口2
-- 4、恢复事务提交
SET AUTOCOMMIT = 1 ;

-- 会话窗口二

-- 1、关闭自动提交
SET AUTOCOMMIT = 0 ;
-- 2、查询id=2，OK
SELECT * FROM dc_user_in02 WHERE id=2 ;
-- 3、查询id=1，OK，加读锁
SELECT * FROM dc_user_in02 WHERE id=1 ;
-- 4、写入成功
INSERT INTO dc_user_in02 (user_name,tell_phone) VALUES ('lock01','13267788998');
-- 5、加写锁成功，id为2的
SELECT * FROM dc_user_in02
WHERE id=2 FOR UPDATE ;
-- 6、加写锁失败(等待)，占用id为1的
SELECT * FROM dc_user_in02 WHERE id=1 FOR UPDATE ;
-- 7、恢复事务提交
SET AUTOCOMMIT=1 ;

-- ## Next-Key锁

-- 会话窗口一

-- 1、开始事务
START TRANSACTION ;
-- 3、锁定id_index=7的两条记录
SELECT * FROM dc_gap
WHERE id_index=7 FOR UPDATE ;
-- 9、提交
COMMIT ;

-- 会话窗口二

-- 2、开始事务
START TRANSACTION ;
-- 4、写入等待,id_index=6
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('4', '6');
-- 5、写入等待,id_index=4
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('4', '4');
-- 6、写入成功,id_index=3
INSERT INTO `dc_gap` (`id`, `id_index`)
VALUES ('4', '3');
-- 7、写入等待,id_index=9
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('7', '9');
-- 8、写入成功,id_index=10
INSERT INTO `dc_gap` (`id`, `id_index`) VALUES ('7', '10');

-- ## Dead-Lock锁

-- 会话窗口一

-- 1、开启事务
START TRANSACTION ;
-- 3、占用id=6的资源
SELECT * FROM dc_gap WHERE id=6 FOR UPDATE ;
-- 5、占用id=9的资源等待
SELECT * FROM dc_gap WHERE id=9 FOR UPDATE ;

-- 会话窗口二

-- 2、开启事务
START TRANSACTION ;
-- 4、占用id=9的资源
SELECT * FROM dc_gap WHERE id=9 FOR UPDATE ;
-- 6、占用id=6的资源抛死锁
SELECT * FROM dc_gap WHERE id=6 FOR UPDATE ;
