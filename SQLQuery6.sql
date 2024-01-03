SELECT* FROM EMPLOYEE
SELECT * FROM EMPLOYEEDESIGNATION
SELECT* FROM INFOEMP
SELECT* FROM WAREHOUSEINFO

------------------------PARTITION BY
SELECT FIRSTNAME +' '+ LASTNAME AS NAME , COUNT(GENDER) OVER (PARTITION BY GENDER) AS GENDERCOUNT  FROM EMPLOYEE

SELECT COUNT(GENDER) AS NOF, GENDER  FROM EMPLOYEE
GROUP BY GENDER 

------------CTE
WITH CTE_EMPLOYEE as(
SELECT COUNT(GENDER) AS NOF, GENDER  FROM EMPLOYEE
GROUP BY GENDER
)
select * from CTE_EMPLOYEE


WITH CTE_EMPLDESIG as(
SELECT * FROM EMPLOYEEDESIGNATION
)

select * from CTE_EMPLDESIG


------------temporaray table

select * from employee
select * from EMPLOYEEDESIGNATION
----simple query
select firstname+' '+ lastname as Name , count(gender) over (partition by gender ) as genderratio, city,salary,position 
from employee join EMPLOYEEDESIGNATION on employee.EMPLOYEEID=EMPLOYEEDESIGNATION.EMPLOYEEID 

--------------temptable usage
create table #temp_genderratio( name varchar(30),genderratio int, city varchar(40), salary int,position varchar(50)
)

insert into #temp_genderratio
select firstname+' '+ lastname as Name , count(gender) over (partition by gender ) as genderratio, city,salary,position 
from employee join EMPLOYEEDESIGNATION on employee.EMPLOYEEID=EMPLOYEEDESIGNATION.EMPLOYEEID 

select* from #temp_genderratio

------delete a  whole table table 
drop table #temp_genderratio
----------or
drop table  if exists #temp_genderratio

----------------------other things 

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

select* from EmployeeErrors
select* from EMPLOYEE

--------------TRIM,LTRIM,RTRIM
SELECT EMPLOYEEID , rTRIM(EMPLOYEEID) as aftertrim FROM EmployeeErrors

------------------replace
select lastname,replace(lastname,'Flenderson - Fired','Flenderson') AS LASTNAME from EmployeeErrors

------------------LOWER UPPER
SELECT FIRSTNAME,LOWER(Firstname) AS LOWERCASE from EmployeeErrors
SELECT LASTNAME,UPPER(lastname) AS UPPERCASE  from EmployeeErrors
------------------------PROPER
SELECT FIRSTNAME , UPPER(SUBSTRING(Firstname,1,1)) + LOWER(SUBSTRING(Firstname,2,100))  AS PROPER from EmployeeErrors
------------------------substring
INSERT INTO EMPLOYEE VALUES(10,'Jimbobabolosuko','nogo','male','karachi')
select* from EmployeeErrors
select* from EMPLOYEE

select EMPLOYEE.FIRSTNAME,EmployeeErrors.FIRSTNAME ,SUBSTRING(employee.firstname,1,3), SUBSTRING(EmployeeErrors.firstname,1,3) from 
employee 
JOIN
EmployeeErrors
on SUBSTRING(employee.firstname,1,3)=SUBSTRING(EmployeeErrors.firstname,1,3) 





