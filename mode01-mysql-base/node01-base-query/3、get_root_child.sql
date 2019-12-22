DROP FUNCTION IF EXISTS get_root_child;
CREATE FUNCTION `get_root_child`(rootId INT)
    RETURNS VARCHAR(1000) CHARSET utf8
    BEGIN
        DECLARE resultIds VARCHAR(500);
        DECLARE nodeId VARCHAR(500);
        SET resultIds = '%';
		SET nodeId = cast(rootId as CHAR);
        WHILE nodeId IS NOT NULL DO
			SET resultIds = concat(resultIds,',',nodeId);
            SELECT group_concat(id) INTO nodeId
			FROM ms_city_sort WHERE FIND_IN_SET(parent_id,nodeId)>0;
        END WHILE;
        RETURN resultIds;
END  ;