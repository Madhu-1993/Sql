select*from employee;
truncate table employee;
drop table employee;

create table employee(eid int primary key identity(1,1),
ename varchar(40),
dept varchar(40),
salary int );


select*from employee order by salary desc offset 2 rows fetch next 3 rows only;