-- SYNTAX TO CREATE DATABASE :-
create database practices;
-- SYNTAX TO ACTIVE AND USE DATABASE :-
use practices;

-- SYNTAX TO CREATE TABLE IN DATABASE :-
create table DATA ( ID int ,  STUD_NAME varchar(50) , STUD_CITY varchar(50) , PINCODE bigint , STUD_NUMBER bigint);

-- SYNTAX TO INSERT DATA IN VARIABLE ( SINGLE ) :-
insert into DATA values (1001 , "A" , "AHMEDABAD" , 123456 , 9876543210 );

-- SYNTAX TO INSERT DATA IN VARIABLE ( MULTIPLE ) :-
insert into DATA values (1002 , "B" , "SURAT" , 234567 , 9988776655 ) , (1003 , "C" , "VADODRA" , "345678" , "8877665544");
insert into DATA values (1004 , "D" , "PUNE" , 456789 , 7766554433 )  , (1005 , "E" , "MUMBAI"  , "567890" , "9988556677");

-- SYNTAX TO RETRIVE ALL DATA :-
select * from DATA;

-- SYNTAX TO RETRIVE PARTICULAR ROW :-
select ID from DATA;
select STUD_NAME from DATA;
select PINCODE from DATA;

-- SYNTAX TO RETRIVE COLUMN :-
select * from DATA where ID = 1002;
select * from DATA where STUD_NAME = "D";