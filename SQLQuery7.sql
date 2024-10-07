------------------------stored procedure


------------simple eg
--Create Procedure Test 
--as
--select* from EMPLOYEE

--exec Test

------------advance example


--Create Procedure BAMP
--AS
--DROP TABLE  IF EXISTS #TEMPTABLE
--CREATE TABLE #TEMPTABLE
--(SALARY INT , POSITION VARCHAR(50), GENDER VARCHAR(50))

--INSERT INTO  #TEMPTABLE
--select AVG (EMPLOYEEDESIGNATION.SALARY) OVER  (partition by (employee.gender)) AS SALARY, employeedesignation.POSITION , employee.gender
--from  employee join EMPLOYEEDESIGNATION on employee.employeeid=EMPLOYEEDESIGNATION.EMPLOYEEID
--SELECT* FROM #TEMPTABLE

--EXEC BAMP @gender='male'
----------you can alter procedure in modify option 



----------------------------subqueries

CREATE PROCEDURE EMP
AS 
SELECT* FROM EMPLOYEE

EXEC EMP


--------SELECT
--SELECT FIRSTNAME+' '+LASTNAME AS NAME , (SELECT COUNT(EMPLOYEEID)  FROM EMPLOYEE) AS NOOFEMPLOYEE
--FROM EMPLOYEE 

--------GROUPBY CANNOT SUBQUERY

--------------FROM 
----U CAN USE TEMP TABLES FOR THIS INSTEAD OF FROM 

SELECT * FROM 
(select gender, city from EMPLOYEE)a

--------------where
exec emp
select* from EMPLOYEEDESIGNATION

select firstname, gender , EMPLOYEEID from EMPLOYEE
where EMPLOYEEID in 
(select EMPLOYEEID from EMPLOYEEDESIGNATION where salary=1500)

--------------------------------------------------------end