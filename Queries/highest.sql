--list salary high to low without duplicate values
select distinct salary
from EMPLOYEES
order by salary desc;

--list first 14 highest salary  without duplicate values
select * from (select distinct salary
from EMPLOYEES
order by salary desc)
    where rownum < 15;

--find the highest 14th salary removing duplicate values
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum < 15;

--find employee info who is making 14th highest salary without duplicates
select *
from employees
where salary = (select min(salary)
                from (select distinct salary from employees order by salary desc)
                where rownum < 15);

select FIRST_NAME,LAST_NAME,SALARY,JOB_ID from employees
where rownum <6;

