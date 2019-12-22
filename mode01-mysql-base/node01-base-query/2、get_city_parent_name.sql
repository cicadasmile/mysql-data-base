DROP FUNCTION IF EXISTS get_city_parent_name;
CREATE FUNCTION `get_city_parent_name`(pid INT)
RETURNS varchar(50) CHARSET utf8
begin
    declare parentName VARCHAR(50) DEFAULT NULL;
    SELECT city_name FROM ms_city_sort WHERE id=pid into parentName;
    return parentName;
end
