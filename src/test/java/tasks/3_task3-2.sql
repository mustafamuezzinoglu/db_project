select JOB_ID, avg(SALARY) as "average salary" from EMPLOYEES group by job_id having JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');
select * from EMPLOYEES where LAST_NAME like '%a%s%';
select max(salary), JOB_ID from EMPLOYEES group by job_id;
select DEPARTMENT_ID, sum(salary) from EMPLOYEES group by DEPARTMENT_ID having sum(salary)>30000 and DEPARTMENT_ID!=50;
select FIRST_NAME, LAST_NAME from EMPLOYEES where HIRE_DATE between '01-JAN-2000' and '03-SEP-2007';
SELECT c.COUNTRY_ID,c.COUNTRY_NAME,c.REGION_ID, r.region_name FROM COUNTRIES c,REGIONS r;
select l.CITY, c.COUNTRY_NAME from COUNTRIES c inner join LOCATIONS L on c.COUNTRY_ID = L.COUNTRY_ID;
select e.FIRST_NAME,e.LAST_NAME,e.DEPARTMENT_ID,d.department_name
from EMPLOYEES e inner join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID where e.DEPARTMENT_ID in (40,80);

