create database edb;
use edb;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Dept VARCHAR(20) NOT NULL,
    Role VARCHAR(20) NOT NULL,
    Salary INT NOT NULL,
    Gender CHAR(1) NOT NULL,
    JoinDate DATE NOT NULL
);

INSERT INTO Employees
(EmpID, Name, Dept, Role, Salary, Gender, JoinDate)
VALUES
(1,'Alice','HR','Manager',55000,'F','2019-03-15'),
(2,'Bob','IT','Developer',72000,'M','2020-07-22'),
(3,'Carol','Finance','Analyst',68000,'F','2018-11-01'),
(4,'David','HR','Executive',52000,'M','2021-01-10'),
(5,'Eve','IT','Senior Dev',85000,'F','2017-06-30'),
(6,'Frank','Finance','Manager',74000,'M','2019-09-14'),
(7,'Grace','Marketing','Executive',60000,'F','2022-02-28'),
(8,'Hank','IT','Lead',90000,'M','2016-04-05'),
(9,'Ivy','HR','Executive',58000,'F','2020-12-19'),
(10,'Jack','Finance','Analyst',65000,'M','2021-03-07'),
(11,'Karen','Marketing','Manager',62000,'F','2018-08-23'),
(12,'Leo','IT','Developer',78000,'M','2019-11-11'),
(13,'Mia','HR','Executive',53000,'F','2022-05-16'),
(14,'Nate','Finance','Manager',71000,'M','2017-12-02'),
(15,'Olivia','Marketing','Analyst',66000,'F','2020-06-18'),
(16,'Paul','IT','Senior Dev',82000,'M','2018-03-27'),
(17,'Quinn','HR','Executive',57000,'F','2021-09-09'),
(18,'Rita','Finance','Lead',76000,'F','2019-01-25'),
(19,'Sam','Marketing','Executive',63000,'M','2022-07-14'),
(20,'Tina','IT','Lead',88000,'F','2016-10-31'),
(21,'Uma','HR','Manager',60000,'F','2020-04-03'),
(22,'Victor','Finance','Analyst',69000,'M','2018-07-19'),
(23,'Wendy','Marketing','Manager',64000,'F','2021-11-27'),
(24,'Xander','IT','Architect',95000,'M','2015-02-14'),
(25,'Yara','HR','Executive',54000,'F','2022-09-08'),
(26,'Zoe','Finance','Manager',73000,'F','2019-05-21'),
(27,'Aaron','Marketing','Analyst',67000,'M','2020-10-15'),
(28,'Bella','IT','Senior Dev',80000,'F','2017-08-06'),
(29,'Carlos','HR','Executive',56000,'M','2021-06-24'),
(30,'Diana','Finance','Lead',77000,'F','2018-02-09'),
(31,'Ethan','IT','Developer',74000,'M','2019-04-18'),
(32,'Fiona','Marketing','Executive',61000,'F','2022-01-05'),
(33,'George','Finance','Analyst',66000,'M','2020-08-11'),
(34,'Helen','HR','Manager',59000,'F','2017-03-22'),
(35,'Ivan','IT','Lead',92000,'M','2015-09-30'),
(36,'Julia','Marketing','Manager',65000,'F','2019-12-03'),
(37,'Kevin','Finance','Manager',70000,'M','2021-07-20'),
(38,'Laura','HR','Executive',55000,'F','2022-10-14'),
(39,'Mark','IT','Developer',76000,'M','2018-05-07'),
(40,'Nina','Marketing','Analyst',63000,'F','2020-03-25'),
(41,'Oscar','Finance','Analyst',67000,'M','2019-08-19'),
(42,'Priya','HR','Senior Dev',79000,'F','2016-11-28'),
(43,'Raj','IT','Manager',85000,'M','2018-06-14'),
(44,'Sarah','Marketing','Lead',71000,'F','2017-02-01'),
(45,'Tom','Finance','Senior Dev',81000,'M','2020-09-09'),
(46,'Uma','IT','Architect',97000,'F','2014-12-22'),
(47,'Vera','Marketing','Manager',68000,'F','2021-04-30'),
(48,'Will','HR','Analyst',51000,'M','2022-11-15'),
(49,'Xena','Finance','Lead',78000,'F','2019-10-06'),
(50,'Yusuf','IT','Senior Dev',87000,'M','2016-07-17');

CREATE TABLE EmployeeAddress (
    EmpID INT PRIMARY KEY,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State CHAR(2) NOT NULL,
    Region VARCHAR(10) NOT NULL,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

INSERT INTO EmployeeAddress
(EmpID, Address, City, State, Region)
VALUES
(1,'101 Maple St','New York','NY','East'),
(2,'22 Oak Ave','Chicago','IL','Midwest'),
(3,'303 Pine Rd','New York','NY','East'),
(4,'44 Birch Ln','Chicago','IL','Midwest'),
(5,'55 Cedar Blvd','Houston','TX','South'),
(6,'606 Elm St','New York','NY','East'),
(7,'77 Spruce Dr','Chicago','IL','Midwest'),
(8,'88 Walnut Way','Houston','TX','South'),
(9,'99 Ash Ct','New York','NY','East'),
(10,'10 Willow Pl','Chicago','IL','Midwest'),
(11,'11 Poplar St','Houston','TX','South'),
(12,'12 Sycamore Ave','New York','NY','East'),
(13,'13 Hickory Rd','Chicago','IL','Midwest'),
(14,'14 Chestnut Ln','Houston','TX','South'),
(15,'15 Magnolia Dr','New York','NY','East'),
(16,'16 Dogwood Blvd','Chicago','IL','Midwest'),
(17,'17 Hawthorn St','Houston','TX','South'),
(18,'18 Redwood Ave','New York','NY','East'),
(19,'19 Cypress Ct','Chicago','IL','Midwest'),
(20,'20 Juniper Way','Houston','TX','South'),
(21,'21 Aspen Pl','Dallas','TX','South'),
(22,'22 Cottonwood St','Dallas','TX','South'),
(23,'23 Palmetto Ave','Phoenix','AZ','West'),
(24,'24 Mesquite Rd','Phoenix','AZ','West'),
(25,'25 Saguaro Ln','Phoenix','AZ','West'),
(26,'26 Palo Verde Dr','Dallas','TX','South'),
(27,'27 Ocotillo Blvd','Phoenix','AZ','West'),
(28,'28 Ironwood St','Chicago','IL','Midwest'),
(29,'29 Pecan Ave','Houston','TX','South'),
(30,'30 Peachtree Ct','New York','NY','East'),
(31,'31 Magnolia St','Dallas','TX','South'),
(32,'32 Bluebonnet Ave','Dallas','TX','South'),
(33,'33 Sunflower Rd','Phoenix','AZ','West'),
(34,'34 Cactus Ln','Phoenix','AZ','West'),
(35,'35 Desert Dr','Phoenix','AZ','West'),
(36,'36 Mesa Blvd','Dallas','TX','South'),
(37,'37 Prairie St','Chicago','IL','Midwest'),
(38,'38 Lakeview Ave','Chicago','IL','Midwest'),
(39,'39 Riverview Rd','New York','NY','East'),
(40,'40 Bayview Ln','New York','NY','East'),
(41,'41 Hillside Dr','Dallas','TX','South'),
(42,'42 Creekside Blvd','Houston','TX','South'),
(43,'43 Brookside St','Phoenix','AZ','West'),
(44,'44 Springdale Ave','New York','NY','East'),
(45,'45 Fairview Rd','Chicago','IL','Midwest'),
(46,'46 Northgate Ln','New York','NY','East'),
(47,'47 Eastwood Dr','Dallas','TX','South'),
(48,'48 Westfield Blvd','Phoenix','AZ','West'),
(49,'49 Southpark St','Chicago','IL','Midwest'),
(50,'50 Central Ave','Houston','TX','South');

-- 1
select dept, count(name) as totalemployees from employees group by dept;

-- 2
select dept, sum(salary) as totalsalary from employees group by dept;

-- 3
select gender, avg(salary) as avgsalary from employees group by gender;

-- 4
select dept, max(salary) as maxsalary from employees group by dept;

-- 5
select role, min(salary) as minsalary from employees group by role;

-- 6
select city, count(empid) as empcount from employeeaddress group by city;

-- 7
select ea.region, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.EmpId = ea.EmpID 
group by region;

-- 8
select dept, avg(salary) as avgsalary from employees group by dept order by avgsalary desc;

-- 9
select ea.city, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.EmpID = ea.EmpId
group by city
order by totalsalary;

-- 10
select role, count(name) as empcount from employees group by role order by empcount desc,
role;

-- 11
select ea.state, count(e.name) as empcount from employees as e join
employeeaddress as ea
where e.empid = ea.empid
group by state order by empcount desc, state;

-- 12
select ea.region, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by region order by totalsalary desc;

-- 13
select dept, min(salary) as minsalary from employees group by dept order by minsalary desc;

-- 14
select dept, count(name) as empcount from employees group by dept having empcount>10;

-- 15
select dept, avg(salary) as avgsalary from employees group by dept having avgsalary>65000;

-- 16
select ea.city, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid group by city having totalsalary>600000;

-- 17
select role, count(name) as empcount from employees group by role having empcount>7;

-- 18
select ea.region, avg(e.salary) as avgsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid group by region having avgsalary<70000;

-- 19
select dept, max(salary) as maxsalary from employees group by dept having maxsalary>=90000;

-- 20
select ea.state, count(e.name) as empcount from employees as e join employeeaddress as ea
where e.empid = ea.empid group by state having empcount>12;

-- 21
select ea.city, min(e.salary) as minsalary from employees as e join employeeaddress as ea 
where e.empid = ea.empid
group by city having minsalary>60000;

-- 22
select e.dept, ea.city, count(e.name) as empcount from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by dept, city;

-- 23
select dept, gender, avg(salary) as avgsalary from employees group by dept,gender;

-- 24
select ea.region, e.role, count(e.name) as empcount from employees as e join employeeaddress as ea
where e.empid = ea.empid group by region, role;

-- 25
select ea.state, e.dept, max(e.salary) as maxsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid 
group by state, dept;

-- 26
select ea.city, e.gender, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by city, gender;

-- 27
select e.dept, ea.city, count(e.name) as empcount from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by dept, city
having empcount>2;

-- 28
select ea.region, e.gender, avg(e.salary) as avgsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by region,gender
order by region,avgsalary desc;

-- 29
select ea.state, e.role, count(e.name) as empcount from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by state, role
having empcount>1;

-- 30
select year(joindate) as joinyear, count(name) as joiners from employees 
group by joinyear
order by joiners;

-- 31
select year(joindate) as joinyear, avg(salary) as avgsalary from employees
group by joinyear;

-- 32
select month(joindate) as joinmonth, count(name) as joiners from employees
group by joinmonth;

-- 33
select quarter(joindate) as joinqtr, sum(salary) as totalsalary from employees
group by joinqtr;

-- 34
select quarter(joindate) as qtr, count(name) as joiners from employees 
group by qtr having qtr in(1,3);

-- 35
select year(joindate) as joinyear, dept, count(name) as empcount from employees
group by joinyear,dept
order by joinyear, dept;

-- 36
select year(joindate) as joinyear, count(name) as joiners from employees
group by joinyear having joiners>6;

-- 37
select quarter(joindate) as qtr, avg(salary) as avgsalary from employees
group by qtr having avgsalary>70000;

-- 38
select ea.state, count(e.name) as empcount, avg(e.salary) as avgsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by state;

-- 39
select ea.state, e.dept, count(e.name) as empcount from employees as e  join employeeaddress as ea
on e.empid = ea.empid
group by state, dept
order by state, empcount desc;

-- 40
select ea.city, count(distinct(e.dept)) as deptcount from employees as e join employeeaddress as ea 
where e.empid = ea.empid
group by city having deptcount>2
order by deptcount desc, city;

-- 41
select ea.region, ea.state, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by region, state;

-- 42
select ea.region, count(e.name) as empcount, avg(e.salary) as avgsalary from employees as e join employeeaddress as ea
where e.empid = ea.empid
group by region having empcount>10 and avgsalary>67000;

-- 43
select ea.city, count(distinct(e.role)) as uniqueroles from employees as e join
employeeaddress as ea on e.empid = ea.empid
group by city order by city;

-- 44
select dept, count(gender) as femalecount from employees where gender = "F" group by dept;

-- 45
select dept, avg(salary) as avgsalary from employees where joindate>"2019-01-01" group by dept; 

-- 46
select ea.city, sum(e.salary) as totalsalary from employees as e join employeeaddress as ea 
on e.empid = ea.empid
where e.dept = "IT"
group by city;

-- 47
select role, count(name) as empcount from employees where salary>70000 group by role;

-- 48
select e.dept, max(e.salary) as maxsalary from employees as e join employeeaddress as ea
on e.empid = ea.empid
where region in("South","West") group by dept
order by maxsalary desc;

-- 49
select year(e.joindate) as joinyear, count(e.name) as empcount from employees as e join employeeaddress as ea
on e.empid = ea.empid
where state = "TX"
group by joinyear;

-- 50
select dept, count(gender) as eligiblefemales from employees
where gender = "F" and salary>60000 group by dept
having eligiblefemales>3;














