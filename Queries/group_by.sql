--get me unique job_id s
select distinct job_id from employees;

--get me average salary for IT_PROG
select avg (salary) from employees where job_id = 'IT_PROG';
select avg (salary) from employees where job_id = 'AC_ACCOUNT';

--get me the average salary each job id
select job_id, avg (salary),count (*), sum (salary)
from employees
group by job_id;

--get me job ids where their avg salary is more than 5k
select job_id, avg (salary),count (*), sum (salary)
from employees
group by job_id
having avg (salary) >5000;