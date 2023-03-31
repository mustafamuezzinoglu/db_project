--get me all info who is working as IT_PROG or SA_REP

select * from employees
where job_id in ('IT_PROG', 'SA_REP' );

--how many employee working as IT_PROG or SA_REP
select count(*)from employees
where job_id in ('IT_PROG', 'SA_REP' );

--how many employeess making more than 8000
select count(*)from employees
where salary >8000;

--how many unique first names we have?
select count(distinct first_name) from employees;

--get me all employees information based on who is making more salary to low salary
select * from employees
order by salary desc;

--get me all emp info order by alphabetical based on firstname
select * from employees
order by first_name asc;

--get me all employees whose first name stats with C
select * from employees
where first_name like 'C%';

--get me first name that has any letter but starts with C 
select * from employees
where first_name like 'C_____';

--get me 5 letter first names where the middle char is z
select * from employees
where first_name like '__c__';

--get me first name where the second char is u
select * from employees
where first_name like '_u%';

--find me minimum salary
select min (salary) from employees;

--find me maximum salary
SELECT MAX(salary) FROM employees;

select avg(salary) from employees;
select round (avg(salary),2) from employees;

select sum(salary) from employees;
