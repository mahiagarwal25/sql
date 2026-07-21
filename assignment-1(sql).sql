show databases;
create database rdb;
use rdb;

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Dept VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
Gender CHAR(1) NOT NULL,
Salary INT NOT NULL,
JoinDate DATE NOT NULL,
Role VARCHAR(50) NOT NULL
);

INSERT INTO Employees (EmpID, Name, Dept, City, Gender, Salary, JoinDate, Role) VALUES
(1,'Alice','HR','New York','F',55000,'2019-03-15','Manager'),
(2,'Bob','IT','Chicago','M',72000,'2020-07-22','Developer'),
(3,'Carol','Finance','New York','F',68000,'2018-11-01','Analyst'),
(4,'David','HR','Chicago','M',52000,'2021-01-10','Executive'),
(5,'Eve','IT','Houston','F',85000,'2017-06-30','Senior Dev'),
(6,'Frank','Finance','New York','M',74000,'2019-09-14','Manager'),
(7,'Grace','Marketing','Chicago','F',60000,'2022-02-28','Executive'),
(8,'Hank','IT','Houston','M',90000,'2016-04-05','Lead'),
(9,'Ivy','HR','New York','F',58000,'2020-12-19','Executive'),
(10,'Jack','Finance','Chicago','M',65000,'2021-03-07','Analyst'),
(11,'Karen','Marketing','Houston','F',62000,'2018-08-23','Manager'),
(12,'Leo','IT','New York','M',78000,'2019-11-11','Developer'),
(13,'Mia','HR','Chicago','F',53000,'2022-05-16','Executive'),
(14,'Nate','Finance','Houston','M',71000,'2017-12-02','Manager'),
(15,'Olivia','Marketing','New York','F',66000,'2020-06-18','Analyst'),
(16,'Paul','IT','Chicago','M',82000,'2018-03-27','Senior Dev'),
(17,'Quinn','HR','Houston','F',57000,'2021-09-09','Executive'),
(18,'Rita','Finance','New York','F',76000,'2019-01-25','Lead'),
(19,'Sam','Marketing','Chicago','M',63000,'2022-07-14','Executive'),
(20,'Tina','IT','Houston','F',88000,'2016-10-31','Lead'),
(21,'Uma','HR','New York','F',60000,'2020-04-03','Manager'),
(22,'Victor','Finance','Chicago','M',69000,'2018-07-19','Analyst'),
(23,'Wendy','Marketing','Houston','F',64000,'2021-11-27','Manager'),
(24,'Xander','IT','New York','M',95000,'2015-02-14','Architect'),
(25,'Yara','HR','Chicago','F',54000,'2022-09-08','Executive'),
(26,'Zoe','Finance','Houston','F',73000,'2019-05-21','Manager'),
(27,'Aaron','Marketing','New York','M',67000,'2020-10-15','Analyst'),
(28,'Bella','IT','Chicago','F',80000,'2017-08-06','Senior Dev'),
(29,'Carlos','HR','Houston','M',56000,'2021-06-24','Executive'),
(30,'Diana','Finance','New York','F',77000,'2018-02-09','Lead');

use rdb;

-- 1
select dept, count(name) as TotalEmployees from Employees group by dept;

-- 2
select dept, sum(salary) as TotalSalary from Employees group by dept;

-- 3
select city, avg(salary) as AvgSalary from Employees group by city;

-- 4
select dept, max(salary) as Maxsalary from Employees group by dept; 

-- 5
select dept, min(salary) as MinSalary from employees group by dept;

-- 6
select dept, count(name) as EmpCount from employees group by dept order by EmpCount desc;

-- 7
select city, sum(salary) as TotalSalary from employees group by city order by Totalsalary;

-- 8
select name, dept, salary from employees order by dept, salary desc;

-- 9
select name, city, joindate from employees order by city, joindate;

-- 10
select name, role, salary from employees order by role, salary;

-- 11
select dept, count(name) as empcount from employees group by dept having empcount>7;

-- 12
select dept, avg(salary) as avgsalary from employees group by dept having avgsalary>65000;

-- 13
select city, sum(salary) as totalsalary from employees group by city having totalsalary>650000;

-- 14
select dept, max(salary) as maxsalary from employees group by dept having maxsalary>=80000;

-- 15
select role, count(role) as rolecount from employees group by role having rolecount>5;

-- 16
select avg(salary) from employees;

-- 17
select dept, count(gender) as Femalecount from employees where gender = "F" group by dept;

-- 18
select max(salary) as highest , min(salary) as lowest from employees;

-- 19
select sum(salary) as TotalSalary from employees where joindate> "2019-01-01";

-- 20
select gender, avg(salary) as avgsalary from employees group by gender;

-- 21
select dept, city, count(name) as empcount from employees group by dept, city;

-- 22
select dept, gender, avg(salary) as avgsalary from employees group by dept, gender;

-- 23
select city, role, sum(salary) as totalsalary from employees group by city, role order by city, totalsalary desc;

-- 24
select dept, role, count(name) as empcount from employees group by dept, role having empcount>1;

-- 25
select city, gender, max(salary) as maxsalary from employees group by city, gender;

-- 26
select dept, avg(salary) as avgsalary from employees group by dept having avgsalary>60000 order by avgsalary desc;

-- 27
select city, dept, count(name) as empcount from employees group by dept, city having empcount>1 order by empcount desc, city;

-- 28
select role, sum(salary) as totalsalary from employees group by role having totalsalary>300000 order by totalsalary;

-- 29
select upper(name) as empname, year(joindate) as joinyear from employees order by joinyear;
 

-- 30
select year(joindate) as joinyear, count(name) from employees group by joinyear order by joinyear;












