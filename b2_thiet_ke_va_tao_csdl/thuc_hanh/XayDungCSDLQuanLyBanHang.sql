drop database if exists QuanLyBanHang;

create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
cID varchar(50) primary key,
cName varchar(50),
cAge int
);

create table Product(
pID varchar(50) primary key,
pName varchar(50),
pPrice int 
);

create table `Order`(
oID varchar(50) primary key,
cID varchar(50),
oDate datetime,
`oTotalPrice` double,
foreign key (cID) references Customer(cID)
);

create table `OrderDetail` (
oID varchar(50),
pID varchar(50),
odQTY int,		 -- so luong
foreign key (oID) references `Order`(oID),
foreign key (pID) references Product(pID),
primary key(oID,pID)
);

