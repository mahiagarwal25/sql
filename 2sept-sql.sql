-- Indexes
-- indexing is an object in your database which is used to improve the data retrieval process from your table

use newdb2;
drop table test18;

create table test18(id int, name varchar(20));

insert into test18 values(1,'a'),(3,'b'),(2,'c'),(5,'d'),(4,'e');

-- explain used to tell how the work will be done in the query
explain select * from test18 where id=3;

-- BTree data structure --> indexing stores the data in this form in the binary tree data structure
-- primary key(clustered index)

select * from test18;

alter table test18 add primary key (id);

desc test18;

select * from test18;

explain select * from test18 where id=3;

-- non-clustered index

create index name_index on test18(name);
show indexes from test18;
select * from test18;
explain select * from test18 where name = 'd';

drop table test19;
create table test19(id int, name varchar(20), age int);
insert into test19 values(1,'a',10),(3,'b',20),(2,'c',15),(5,'a',16),(4,'c',15);

select * from test19;
alter table test19 add primary key (id);
explain select * from test19 where id = 4;

-- composite key used where there is a sequence to index the column
create index name_age_index on test19(name,age);
select * from test19;
explain select * from test19 where name = 'c';
explain select * from test19 where age = 15;
explain select * from test19 where name = 'b' and age = 15;











