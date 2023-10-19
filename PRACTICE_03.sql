use practices;

-- LOAD DATA-SET IN SQL WORKSET:

-- STEP:01 SELECT DATABASE AND RIGHT CLICK ON DATABASE.
-- STEP:02 SELECT "TABLE IMPORT DATA WIZARD" ( THIS WORK ONLY CSV FILE OR JSON FILE ).
-- STEP:03 GIVE PATH FOR WHERE YOU CAN SAVE CSV OR JSON FILE.
-- STEP:04 CLICK "NEXT" BUTTON UPTO FINISH PROCESS.

SELECT * FROM worker;

-- SYNTAX :-

-- 01 FETCH ALL DATA IN WORKER TABLE :-
select * from worker;
-- 02 FETCH ALL VALUE OF DEPARTMENT FROM WORKER TABLE :-
select distinct(department) from worker;
-- 03 PRINT DETAILS OF WORKER WITH DEPARTMENT NAME AS "ADMIN" :-
select count(*) as number from worker where department = "Admin";
-- 04 PRINT DETAILS OF EMPLOYEES WHOSE SALARY BETWEEN 10000 TO 50000 :-
select * from worker where salary between 10000 and 50000;
-- 05 PRINT FULL-NAME OF EMPLOYEES , EMAIL:-
select *, concat(first_name ," ",last_name ) from worker;
select *, concat(first_name,last_name,"@gmail.com") from worker;
-- 06 PRINT DETAILS OF WORKER SALARY AS DEPARTMENT ARE "HR" IN DESCENDING ORDER :-
select * from worker where department = "HR" order BY SALARY  DESC; 
-- 07 PRINT DETAILS OF WORKER SALARY AS DEPARTMENT ARE "ADMIN" IN ASCENDIND ORDER :-
select * from worker where department = "ADMIN" order by SALARY asc;
-- 08 PRINT DETAILS OF WORKER WHOSE LAST NAME START WITH "S" AND SALARY MORE THAN 15000 :-
select * from worker where last_name like "A%" and salary>10000;
-- 09 DO DOUBLE SALARY AND SHOW ALL DATA FROM WORKER TABLE :-
-- INNER QUERY SYNTAX : select column_name (like * , FIRST_NAME ) from ( INNER QUERY ) as table_name where caluse or condition;
select * from worker;
select * , (2 * salary ) as DOUBLE_SALARY from worker;
-- 10 DO DOUBLE SALARY AND SHOW DOUBLE SALARY MORE THAN 600000 AND SHOW ALL DATA OF WORKER :- ( INNER QUERY )
select * from (select * , (2 * salary ) as DOUBLE_SALARY from worker) as t1 where DOUBLE_SALARY>600000;
-- SECOND WAY :-
select * , (2 * salary )  as DOUBLE_SALARY from worker having DOUBLE_SALARY>600000;

-- AGGREGATE FUNCTION LIKE AVERAGE , MINIMUM , MAXIMUM :-
-- 11 MINIMUM SALARY :-
select min(salary) from worker;
-- 12 AVERAGE SALARY :-
select avg(salary) from worker;
-- 13 MAXIMUM SALARY FROM WORKER TABLE BY EACH DEPARTMENT :-
select department , max(salary) as MAXIMUM_SALARY from worker GROUP BY department;
-- 14 AVERAGE SALARY FROM WORKER TABLE BY EACH DEPARTMENT :-
select department , avg(salary) as AVERAGE_SALARY from worker GROUP BY department;