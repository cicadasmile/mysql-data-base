create function get_name(p_id INT) returns VARCHAR(20)
begin
    declare userName varchar(20);
    select user_name from t01_user where id=p_id into userName;
    return userName;
end;

SELECT get_name(1) ;