use tcldb2;
     
select * from tcldb2.test;
 
start transaction;
insert into tcldb2.test values(105,'sadaf');

SET SQL_SAFE_UPDATES = 0;
savepoint tcldb2_insert_chk1; -- creating a reference point to revert to this transaction only
delete from tcldb2.test where id = 19;

rollback to tcldb2_insert_chk1; -- revert to specific point

select * from tcldb2.test;


-- Data control language

-- authentication and authorization

create user mahi identified by 'mahi25'; -- creates user and password for connection

show grants for mahi; -- to give permission

-- Grant statement
grant select on newdb.* to mahi; -- giving access for all the tables from newdb database

show grants for mahi;

-- give the select and insert permission to mahi user
-- provide the update permission on a specific column to this mahi user
-- revoke the delete permission from this mahi user
-- revoke all the permissions from the mahi user (revoke all privileges)(command) 




 
