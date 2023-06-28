exec sp_databases;
select *from prod;
delete prod;
truncate table prod;


drop table prod
create table prod(
p_id int primary key identity(1,1),
p_name varchar(40),
company varchar(40),
price int 
);