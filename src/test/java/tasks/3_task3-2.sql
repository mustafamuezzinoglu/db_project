select JOB_ID, avg(SALARY) as "average salary" from EMPLOYEES group by job_id having JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');
select * from EMPLOYEES where LAST_NAME like '%a%s%';
select max(salary) from EMPLOYEES group by department_id;