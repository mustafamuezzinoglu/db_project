--how to find employees information of who is making highest salary in the company
--get me the highest salary
select max (salary) from employees;

--highest salary employee information
select * 
from employees
where salary =24000;

--subquery solution in one shot
select * 
from employees
where salary = (select max (salary) from employees);

--finding second highest salary
--get the highest salary first
select max (salary) from employees;

--highest after 24k
select max (salary)
from employees
where salary <24000;
--or instead of 24000 we can put 
select max (salary)
from employees
where salary < (select max (salary) from employees);

---one shot combining two queries
select * 
from employees
where salary = (select max (salary)
from employees
where salary < (select max (salary) from employees));
-------
--list of the employees who is making top 10 salary
--get the first 10 people then order them high to low based on salary
select * from employees
where rownum < 11
order by salary desc;
--but it the list not we want
--order all employees based on salary then display only first 10 result we want


--list the employees who is making top 10 salary
select * 
from (select * from employees order by salary desc)--order all employee
where rownum < 6; --then first x result

