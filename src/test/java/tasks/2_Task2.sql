-- 1. list the initials of all the employees
select substr(FIRST_NAME,0,1)||substr(LAST_NAME,0,1) from employees;
-- 2. list the full names of all employees ( fullname: Lastname FirstName)
select LAST_NAME || ' ' || first_name as "Full Name" from EMPLOYEES;
-- 3. who has the longest name in the employees table?
select FIRST_NAME from EMPLOYEES where length(FIRST_NAME) =  (select max(length(FIRST_NAME)) from employees);
select * from employees where length(first_name||' '||last_name) =
                              ( select max( length(first_name||' '||last_name)) from employees );
--     FIRST_NAME from employees where length(FIRST_NAME)= ();
-- 4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
select * from employees where department_id in(90,60,100,130,120);
-- 5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from employees where department_id not in(90,60,100,130,120);
-- 6. divide employees into groups by using their job id
select JOB_ID from employees group by job_id;
-- 6.1 display the maximum salaries in each groups
select JOB_ID, max(SALARY) from employees group by job_id;
-- 6.2 display the minium salaries in each groups
select JOB_ID, min(SALARY) from employees group by job_id;
-- 6.3 display the average salary of each group
select JOB_ID, avg(SALARY) from employees group by job_id;
-- 6.4 how many employees are there in each group that have minimum salary of 5000 ?
select JOB_ID, count(*) from employees where salary >=5000 group by job_id ;
-- 6.5 display the total budgests of each groups
select JOB_ID,sum(salary) from employees group by job_id;
-- 7. display employees' full email addresses and full names
select lower(email|| '@gmail.com' ) as "email addesses", FIRST_NAME ||' '|| LAST_NAME as "full name" from EMPLOYEES;
-- (assume that the domain of the email is @gmail)
-- 8. display full addresses from locations table in a single column
select STREET_ADDRESS ||', '||CITY ||' '||  POSTAL_CODE|| ', '|| COUNTRY_ID as "FullAddress" from LOCATIONS;
-- (full address: Street_Addtess,  CityName  ZipCode,  Country_id)

create or replace view EmployeeInfo as select LAST_NAME||' '||FIRST_NAME as FullName, email as Email from EMPLOYEES;
drop view EmployeeInfo;