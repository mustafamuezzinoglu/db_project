select * from customer;
select * from address;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from customer  join ADDRESS
    on customer.address_id = address.address_id;

--customer ilk ve son isim sutunu ile adress in adress ve phone sutunlarini adress id lerine gore ayni olanlari eslestirmek icin
--sadece cakisan kesisen kisileri dahil eder
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
 on c.address_id = a.address_id;

--eger eslesmeyen varsa onlari da listeye eklemek icin join onune  soldaki yani ilk table name icin left eklenir
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c left join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                     on c.address_id = a.address_id;  --left ile join arasina inner yazilabilir optinal

--eger eslesmeyen varsa onlari da listeye eklemek icin join onune  sagdaki yada ikinci table name icin right eklenir
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c right join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                          on c.address_id = a.address_id; --right ile join arasina outer yazilabilir optinal

--eger hepsini yazdiremak istiyorsak
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c full join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                           on c.address_id = a.address_id;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--customerdaki null lari bulmak icin
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c left join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                          on c.address_id = a.address_id
where c.ADDRESS_ID is null;

--customerdaki idsi olup adress de karsiligi olmayanlari bulmak icin yani adress teki nullarin karsiligi icin
select FIRST_NAME,LAST_NAME,c.address_id,ADDRESS,PHONE
from customer c left join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                          on c.address_id = a.address_id
where a.ADDRESS_ID is null;

--.kismayanlari bulmak icin hem sol hem sag
select *from customer c full outer join ADDRESS a                                 --if we ad some thing after table name it defines previous table name
                          on c.address_id = a.address_id
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;
