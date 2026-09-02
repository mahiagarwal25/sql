/*
views is a virtual table 
It is a object which store the query 
It do not store data physically 
It access/fetch the data from the underlying table 
benefits --> bcoz it makes your complex query simple 
It helps in data security : we can hide the imp. data without changing the permission of table 
*/

create database viewsdb;
use viewsdb;

create table employee4( id int , name varchar(50), salary int);
insert into employee4 values (1,'amar',10000),(2,'shivank',20000);

create view emp_views1 as select id , name from employee4; -- this is simple view

select * from emp_views1;

select salary from emp_views1; -- wil give error

-- new row insert 
insert into employee4 values (3,'abhishek',30000);

select * from emp_views1; -- base table change view also got new data 

insert into emp_views1 values (4,'raj'); -- view insert as per column

select * from emp_views1;
select * from employee4; -- it will show data in employee table as well