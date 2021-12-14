use QuanLyBanHang;

Insert into Customer
value (1,'Minh Quan',10);

Insert into Customer
value (2,'Ngoc Oanh',20);

Insert into Customer
value (3,'Hong Ha',50);

insert into `Order`
value (1,1,'3/21/2006',null);

insert into `Order`
value (2,2,'3/23/2006',null);

insert into `Order`
value (3,3,'3/16/2006',null);

insert into Product
value (1,'May Giat',3);

insert into Product
value (2,'Tu Lanh',3);

insert into Product
value (3,'Dieu Hoa',7);

insert into Product
value (4,'Quat',1);

insert into Product
value (5,'Bep Dien',2);

insert into OrderDetail
value (1,1,3);

insert into OrderDetail
value (1,3,7);

insert into OrderDetail
value (1,4,2);

-- hien thi cac thong tin oID , oDate, oPrice
select `Order`.oID, `Order`.oDate, `Order`.`oTotalPrice`
from `Order`;

-- hien thi danh sach khach hang da mua hang, và danh sach san pham đc mua
select c.cID , c.cName , p.pName
from customer c join `order` o on c.cID = o.cID
join `OrderDetail` od on od.oID = o.oID
join Product p on p.pID = od.pID ;

-- hien thi danh sach khong mua hang
