-- CTE
use viewsdb;
-- CTAS --> create table as select statement
create table city_t2 as select * from world.city;
create table country_t2 as select * from world.city;

select * from city_t2
where countrycode = 'AFG'; 

select c.district from city_t2 as c
group by district having sum(c.population)>50000;

select district, max(population) from city_t2 
group by district;
  
select name from city_t2 as c where population = 
(select max(population) from city_t2 where district = c.district);

with district_max as (
select district, max(population) as d_population
from city_t2
group by district)

select * from district_max as dm join city_t2 as c
on c.district = dm.district and c.population = dm.d_population;

with cte as(
select max(population) from city_t2
where population <
(select max(population) from city_t2))

,cte2 as
(select max(population) from city_t2 where population < (select * from cte))

select * from city_t2 where population = (select * from cte2);

