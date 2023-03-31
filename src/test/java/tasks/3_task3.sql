
create table address1(address_id INTEGER primary key, address VARCHAR(50) not null, phone INTEGER not null );

Alter table address1 add adress_id Integer;
Alter table address1 rename column adress_id to del;
ALTER table address1 drop column del;

Alter table address1 rename to address111;

insert into address111 (address_id, address, phone) values (5, '1913 Hanoi Way' , 28303384);
insert into address111 (address_id, address, phone) values (7, '692 Hanoi Way' , 44847719);
insert into address111 (address_id, address, phone) values (8, '1566 Hanoi Way' , 70581400);
insert into address111 (address_id, address, phone) values (10, '1795 Hanoi Way' , 86045262);
insert into address111 (address_id, address, phone) values (11, '900 Hanoi Way' , 16571220);


select * from address111;

create table Customers (c_id INTEGER primary key , first_name varchar(25) not null, last_name varchar(25) not null, address_id INTEGER null references address111);
insert into Customers (c_id, first_name, last_name, address_id ) values (1, 'Mary','dfv',5);
insert into Customers (c_id, first_name, last_name, address_id ) values (2, 'hdth','fd,h', null);
insert into Customers (c_id, first_name, last_name, address_id ) values (3, 'Mafgbfgry','df,.l.lith',5);
insert into Customers (c_id, first_name, last_name, address_id ) values (4, 'Mafgbfry','qwfq',8);
insert into Customers (c_id, first_name, last_name, address_id ) values (5, 'Mafgbry','qwrfvdfv',null);

select * from CUSTOMERS order by c_id;

drop table CUSTOMERS;
drop table address111;
truncate table address111;
