--1----CREATING Database
CREATE DATABASE PRACTICE;

--2--CREATING A TABLE
CREATE TABLE EMPLOYEE_TABLE
(
E_ID INT,
FIRSTNAME varchar(50),
LASTNAME varchar(50),
AGE INT,
GENDER varchar(10)
);
--3 show table
SELECT * FROM EMPLOYEE_TABLE;

--4 adding data in table
INSERT INTO EMPLOYEE_TABLE VALUES
(
10001,
'john',
'Doe',
 23,
'Male'
);
