
use demo;

DELIMITER //

create procedure display_list_users()
begin
select * from users;
end;
// 
DELIMITER ;

DELIMITER //
create procedure update_users(IN user_id int , IN user_name varchar(50) ,IN user_email varchar(50),IN user_country varchar(50))
begin
update users
set users.name = user_name,  users.email = user_email,  users.country = user_country
where users.id = user_id;
end;
// 
DELIMITER ;

DELIMITER //
create procedure delete_users(IN user_id int)
begin
delete from users 
where users.id = user_id;
end;
// 
DELIMITER ;

call display_list_users();

call update_users (1,'Minh','minh@codegym.vn','Viet Nam');