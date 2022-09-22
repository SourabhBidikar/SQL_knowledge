create database d_power
use d_power

create table employee(emp_id int)

insert into employee(emp_id)
values (112)

select * from employee

update 
[dbo].[employee]
set [emp_id]=113
	where [emp_id]=112

select * from employee

-------------------------------------------------------

create table product(pname varchar(30))

insert into product (pname)
values('Sourabh')

select * from product

-----------------------------------------------------
--ALTER COMMAND-----------
alter database [AdventureWorks2019] modify name= adworks2019
------------------------------------------------------------

---ALTER COMMAND FOR TABLE----	

alter table employee
add pro_id int IDENTITY(1,5)

select * from employee

insert into employee (emp_id)
values(156)

-------------------------------
alter table product
alter column pname varchar(40)

alter table product
add  pid int

alter table product
drop column pname

select * from product
