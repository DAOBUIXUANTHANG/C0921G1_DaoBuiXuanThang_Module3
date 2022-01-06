use furama_database;
-- vi tri
insert into position value 
(01, 'Manager'),
(02,'Service Staff');


select * from position;

-- bang cap
insert into education_degree values
(01, 'Intermediate'),
(02, 'College'),
(03, 'University'),
(04, 'Postgraduate');

select * from education_degree;

-- phong ban lam viec

insert into division values
(01, 'Sales-Marketing'),
(02, 'Administration'),
(03, 'Service'),
(04, 'Management');

-- bang user

insert into `user` values 
('An@codegym','123456'),
('Binh@codegym','123456'),
('Yen@codegym','123456'),
('Toan@codegym','123456');

select * from `user`;

-- bang employee : nhan vien

insert into employee values
(01,'Nguyễn Văn An','1970-11-07','456231786',10000000,'0901234121','annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1,'An@codegym'),
(02,'Lê Văn Bình','1997-04-09','654231234',7000000,'0934212314','binhlv@gmail.com','22 Yên Bái, Đà Nẵng',1,2,2,'Binh@codegym'),
(03,'Hồ Thị Yến','1995-12-12','999231723',14000000,'0412352315','thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2,'Yen@codegym'),
(04,'Võ Công Toản','1980-04-04','123231365',17000000,'0374443232','toan0404@gmail.com','277 Hoàng Diệu, Quảng Trị',1,4,4,'Toan@codegym');


select * from employee;

-- cac bang lien quan den customer 
-- customer_type

insert into customer_type values 
(01,'Diamond'),
(02,'Platinium'),
(03,'Gold'),
(04,'Silver'),
(05,'Member');

select * from customer_type;

-- customer
insert into customer values
(001,5,'Nguyễn Thị Hào','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng'),
(002,3,'Phạm Xuân Diệu','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Thái Phiên, Quảng Trị'),
(003,1,'Trương Đình Nghệ','1990-02-27',1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 Ông Ích Khiêm, Vinh'),
(004,1,'Dương Văn Quan','1981-07-08',1,'543432111','0490039241','duongquan@gmail.com','K453/12 Lê Lợi, Đà Nẵng'),
(005,4,'Hoàng Trần Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 Lý Thái Tổ, Gia Lai'),
(006,4,'Tôn Nữ Mộc Châu','2005-12-06',0,'732434215','0988888844','tonnuchau@gmail.com','37 Yên Thế, Đà Nẵng'),
(007,1,'Nguyễn Mỹ Kim','1984-04-08',0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 Lê Lợi, Hồ Chí Minh'),
(008,3,'Nguyễn Thị Hào','1999-04-08',0,'965656433','0763212345','haohao99@gmail.com','55 Nguyễn Văn Linh, Kon Tum'),
(009,1,'Trần Đại Danh','1994-07-01',1,'432341235','0643343433','danhhai99@gmail.com','24 Lý Thường Kiệt, Quảng Ngãi'),
(0010,2,'Nguyễn Tâm Đắc','1989-07-01',1,'344343432','0987654321','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng');

select * from customer;

 insert into customer (customer_type_id,customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_adress) values 
(2,'Nguyễn Tâm Đắc','1989-07-01',1,'344343432','0987654321','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng');

delete from customer 
where customer_id = 12;

select C.customer_id, CT.customer_type_name , C.customer_name, C.customer_birthday, C.customer_gender , C.customer_id_card, C.customer_phone, C.customer_email, C.customer_adress 
from customer C join customer_type CT on C.customer_type_id = CT.customer_type_id 
order by C.customer_id;

select C.customer_id, CT.customer_type_name , C.customer_name, C.customer_birthday, C.customer_gender , C.customer_id_card, C.customer_phone, C.customer_email, C.customer_adress 
from customer C join customer_type CT on C.customer_type_id = CT.customer_type_id 
WHERE C.customer_id = 12;

update customer
set customer_type_id = 1, customer_name = 't' ,customer_birthday = '1989-07-01' ,customer_gender = 0 , customer_id_card ='', customer_phone = '' ,customer_email= '', customer_adress =''
where customer_id = 12