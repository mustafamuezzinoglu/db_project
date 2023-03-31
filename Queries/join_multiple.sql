--get me first_name,last_name and department name for all employees
select * from employees;
select * from departments;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from employees e left join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--get me the list who doesnt have any departments name
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from employees e left join DEPARTMENTS d
                           on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID is null;

--get me first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from employees e join DEPARTMENTS d
                           on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                           join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname and deparment name, city,country_name for all
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,country_name
from employees e join DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 join LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 join COUNTRIES c
                                on l.COUNTRY_ID = c.COUNTRY_ID;