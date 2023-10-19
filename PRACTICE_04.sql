-- GUPTA LUCKY
use practices;

-- LOAD DATA-SET IN SQL WORKSET:

-- STEP:01 SELECT DATABASE AND RIGHT CLICK ON DATABASE.
-- STEP:02 SELECT "TABLE IMPORT DATA WIZARD" ( THIS WORK ONLY CSV FILE OR JSON FILE ).
-- STEP:03 GIVE PATH FOR WHERE YOU CAN SAVE CSV OR JSON FILE.
-- STEP:04 CLICK "NEXT" BUTTON UPTO FINISH PROCESS.

SELECT * FROM customers;

-- SYNTAX :-

-- 01.	DELETE RECORDS OF ALL CUSTOMERS WHOSE FIRST NAME STARTS WITH M AND LAST NAME STARTS WITH L.
delete from customers where Firstname like "M%" and Lastname like "L%";
select * from customers;
-- 02.	COUNT THE NUMBER OF CUSTOMERS WHOSE FIRST NAME STARTS WITH B AND LAST NAME STARTS WITH M.
select count(*) as number from customers where Firstname like "B%" and lastname like "M%"; 
-- 03.	PRINT ALL THE RECORDS SORTED BY CUSTOMER PHONE NUMBERS.
select phone from customers order by phone asc;
-- 04.	PRINT DETAILS OF ALL CUSTOMERS WHOSE FIRST NAME HAS THE SECOND LETTER AS ‘E’ AND LAST NAME ENDS WITH ‘E’.
select * from customers where Firstname like "_E%" and Lastname like "%E";
-- 05.	GET THE DISTINCT CITY AND STATE COMBINATIONS OF INDIA.
select distinct(city) , (state) from customers where country = "india";
-- 06.	GET DETAILS OF CUSTOMERS WHOSE PHONE NUMBERS START WITH 7.
select * from customers where phone like "7%";
-- 07.	GET DETAILS OF CUSTOMERS WHOSE POSTAL CODE RANGES IN THE RANGE 600000 AND 700000.
select * from customers where PostalCode between 600000 AND 700000;
-- 08.	COUNT THE NUMBER OF CUSTOMERS WHOSE POSTAL CODE RANGES FROM 500000 TO 700000.
select * from customers where PostalCode between 500000 AND 700000;
-- 09.	GET THE DETAILS OF CUSTOMERS WHOSE NAMES START WITH A AND BELONG TO SWITZERLAND.
select * from customers where COUNTRY = "Switzerland" and Firstname like "A%" ;
-- 10.	COUNT THE NUMBER OF CUSTOMERS WHO BELONG TO COUNTRIES STARTING WITH G.
select count(*) as number from customers where country like "G%";