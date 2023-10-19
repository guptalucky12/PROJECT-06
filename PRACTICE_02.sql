use practices;

-- SYNTAX TO USE NOT NULL , PRIMARY KEY IN TABLE :-
create table DATA1 ( ID int PRIMARY KEY , STUD_NAME varchar(50) NOT NULL , ENGLISH int , HINDI int , MATHS int );

insert into DATA1 values (1, 'JAYANT', 56, 19, 72),(2, 'AJAY', 82, 34, 60),(3, 'REENA', 66, 99, 84),(4, 'RAJ', 71, 95, 84),(5, 'NISHANT', 97, 69, 91),(6, 'JAIMEEN', 13, 19, 32), (7, 'SRUTI', 11, 100, 53),(8, 'DAKSH', 13, 53, 12),(9, 'ANAND', 45, 62, 47),(10, 'RAJAT', 77, 23, 53);

select * from DATA1;
select ENGLISH from DATA1;
select STUD_NAME from DATA1;

select * from DATA1 where MATHS>51;
select ID , STUD_NAME from DATA1 where HINDI>61;

-- SYNTAX UPDATE DATA IN TABLE :-

update DATA1 set STUD_NAME = "LUCKY" where ID = 1;
select * from DATA1 WHERE ID = 1;

update DATA1 set STUD_NAME = "DHRUMIL" where STUD_NAME = "AJAY";
select * from DATA1 where STUD_NAME = "DHRUMIL";

-- SYNTAX :-

-- 01 FIND STUD_NAME WHO'S NAME START WITH "R" :-
select * from DATA1 where STUD_NAME like "R%";
-- 02 FIND STUD_NAME WHO'S NAME START WITH "A" :-
select * from DATA1 where STUD_NAME like "A%";

-- 03 FIND STUD_NAME WHO'S NAME FOURTH WORD ARE "A" :-
select * from DATA1 where STUD_NAME like "___A%";
-- 04 FIND STUD_NAME WHO'S NAME SECOND LAST WORD ARE "A" :-
select * from DATA1 where STUD_NAME like "%A_";
-- 05 FIND STUD_NAME WHO'S NAME THIRD LAST WORD ARE "E" :-
select * from DATA1 where STUD_NAME like "%E__";

-- 06 FIND STUD_MARKS ENGLISH SUBJECT BETWEEN 35 TO 76 :-
select * from DATA1 where ENGLISH between 35 and 76;
select ID , STUD_NAME , ENGLISH from DATA1 where ENGLISH between 35 and 76;

-- 07 FIND STUD_MARKS HINDI SUBJECT BETWEEN 33 TO 66 :-
select * from DATA1 where HINDI between 33 and 66;
select ID , STUD_NAME , HINDI from DATA1 where HINDI between 33 and 66;

-- 08 DELETE SYNTAX :-
delete from DATA1 where ID = 1;
select * from DATA1;

delete from DATA1 where STUD_NAME = "DHRUMIL";
select * from DATA1;

-- 09 TRUNCATE SYNTAX :-
TRUNCATE DATA1;
select * from DATA1;

-- 010 DROP SYNTAX :-
DROP TABLE DATA1;

