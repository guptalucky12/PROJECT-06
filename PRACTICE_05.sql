create database practices01;

use practices01;

select * from customers;

alter table customers drop column Email;

alter table customers add Info varchar(50);
select * from customers;

alter table customers rename column phone to CONTACT_NUMBER;
select * from customers;

-- ERROR SOLVE
alter table customers Modify column Date_of_Birth date;
select * from customers;

-- 
alter table customers Modify column DateEntered date;
select * from customers;

select current_date();
select now();

select date_add(current_date,interval 30 day );
