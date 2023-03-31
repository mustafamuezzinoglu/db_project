--get me all employees firstname, lastname and their managers first and lastname
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from employees;

select * from DEPARTMENTS;

--employee listesindeki empid ile managerlari birlestirecegiz bu yuzden emploee ile employee birlesecek e1 e2 yapiyoruz
--sonra e1 den managerid yi e2 den employeee id ile birlestiriyoruz ki bize kisilerin mangerlarini gostersin
select e1.employee_id, e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.first_name,e2.last_name
from employees e1 left join employees e2
on e1.manager_id = e2.employee_id
order by e1.EMPLOYEE_ID;