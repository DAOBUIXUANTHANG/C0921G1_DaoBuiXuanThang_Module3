-- B1: Tạo cơ sở dữ liệu demo
drop database if exists demo;
create database demo;
use demo;

-- b2  Tạo bảng Products với các trường dữ liệu sau:

create table products(
id int primary key ,
product_code varchar(45),
product_name varchar(45),
product_price int,
product_amuont int,
product_description varchar(45),
product_status varchar(45)
);

-- chen 1 so du lieu cho bang

insert into products value 
(1,'TW','Iphone 10',1200,10,'den','10%'),
(2,'TR','Iphone 10',1200,10,'den','10%'),
(3,'TH','Iphone 10',1200,10,'den','10%'),
(4,'VN','Iphone 10',1200,10,'den','10%');

-- b3
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index idx1 on products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create unique index idx2 on products (product_code,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain select * from products where product_code = 'TH';

explain select * from products where product_code = 'VN' and product_price = 1200;

-- So sánh câu truy vấn trước và sau khi tạo index
drop index idx1 on products;
drop index idx2 on products;
explain select * from products where product_code='VN'; 
explain select * from products where product_code='VN' and product_price = 1200; 

-- B4 
create view products_view as
select product_code,product_name,product_price,product_status
from products;
select * from products_view;

create or replace view products_view as
select product_code,product_name,product_price,product_amuont,product_status
from products;
select * from products_view;

-- xoa view 
drop view products_view;

-- b5 :
delimiter //
create procedure getProduct ()
begin 
select * from products;
end; //
 delimiter ;
 call getProduct();
 
 -- Tạo store procedure thêm một sản phẩm mới
 
 delimiter //
create procedure add_product (id int, product_code varchar(45), product_name varchar(45), product_price int, 
product_amuont int, 
product_description varchar(45),
product_status varchar(45))
begin 
insert into products values (id,product_code,product_name,product_price,product_amuont,product_description,product_status);
end; //
delimiter ;
call add_product(5,'aaa','aaaaa',1600,20,'aaaaaa','98%');