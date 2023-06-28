create database Webapi;

create table Department(Deptid int primary key identity(1,1),
Deptname varchar(40));

create table employee(Eid int primary key identity(1,1),
Ename varchar(40),
salary int,Deptid int foreign key references Department(Deptid));

select *from Department;
select *from employee;

select 
