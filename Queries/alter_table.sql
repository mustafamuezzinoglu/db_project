select * from SCRUMTEAM;

--adding new colmun
ALTER TABLE SCRUMTEAM ADD salary Integer;

--update existing employees salary
UPDATE SCRUMTEAM SET salary = 100000 where EMP_ID=1;
UPDATE SCRUMTEAM SET salary = 900000 where EMP_ID=2;
UPDATE SCRUMTEAM SET salary = 130000 where EMP_ID=3;
UPDATE SCRUMTEAM SET salary = 120000 where EMP_ID=4;
UPDATE SCRUMTEAM SET salary = 110000 where EMP_ID=5;
UPDATE SCRUMTEAM SET salary = 150000 where EMP_ID=6;

--rename the column
ALTER TABLE SCRUMTEAM RENAME COLUMN salary TO annual_salary;

--delete, drop column
ALTER TABLE SCRUMTEAM DROP COLUMN annual_salary;

--how to change table name?
ALTER TABLE SCRUMTEAM rename to agileteam;

select * from agileteam;

--truncate table if we want to delete all data from table but still keep table structure
truncate table agileteam;

--if we wanna delete table and data together we should use drop table
DRop table agileteam;