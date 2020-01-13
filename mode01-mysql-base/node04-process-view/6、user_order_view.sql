CREATE OR REPLACE
VIEW user_order_view AS SELECT
	t1.id,t1.user_name,t2.order_no,t2.good_id,
	t2.good_name,t2.num,t2.total_price
FROM v01_user t1
LEFT JOIN v02_order t2 ON t2.user_id = t1.id;