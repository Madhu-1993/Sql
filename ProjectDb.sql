select name from sys.databases;
exec sp_help databases;
create database Ecommerse;
use Ecommerse;

create table Registration(email varchar(50),
password varchar(50),
confirmpassword varchar(50)
)

create table TableLogin(id int primary key Identity(1,1),
name varchar(50),
password varchar(50)
)


drop table Catagories;

create table Roles(roleid int primary key identity(1,1),
rolename varchar(40),
);

create table Users(userid int primary key identity(1,1),
username varchar(40),
email varchar(30),
password varchar(30),
contact varchar(40),
roleid int,
constraint  fk_role_id foreign key(roleid)references Roles(roleid) 
);

create table Catagories(categoryid int primary key identity(1,1),
categoryname varchar(20)
)
select * from Catagories
create table Product(productid int primary key identity(1,1),
productname varchar(30),
discount int,
stock int,
price int,
discription varchar(500),imageurl varchar(255),
categoryid int,
constraint fk_category_id foreign key(categoryid)references 
Catagories(categoryid)
)
drop table Product;

select*from Registration;
select * from TableLogin;
select * from Catagories;
select * from Roles;
select * from Users;
select * from Product


alter table Product add  imageurl varchar(255);
--alter table Product drop column categoryname;
drop table Product
truncate table Product