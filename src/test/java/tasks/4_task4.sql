select max(salary) from EMPLOYEES where salary< (select max(salary) from employees);
select salary from employees;
--find the 3rd maximum salary from the employees table (do not include duplicates)
select max(salary) from employees where salary< (select max(salary) from EMPLOYEES where salary< (select max(salary) from employees));
select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 4;
--find the 5th maximum salary from the employees table (do not include duplicates)
select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 6;
--find the 10th maximum salary from the employees table (do not include duplicates)
select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 11;
--find the 3rd minimum salary from the employees table (do not include duplicates)
select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 4;
select min (salary) from EMPLOYEES where salary > (select min (salary) from employees where salary > (select min(salary) from employees));
--find the 10th maximum salary from the employees table (do not include duplicates)git
select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 11;
