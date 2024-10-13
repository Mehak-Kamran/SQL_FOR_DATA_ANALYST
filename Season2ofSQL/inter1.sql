--joins
--inner,outer(full,right,left)
Insert into PRACTICE.DBO.EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly','Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

Insert into PRACTICE.DBO.EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)

select * 
from PRACTICE.dbo.EmployeeDemographics
select * 
from PRACTICE.dbo.EmployeeSalary
--INNER JOIN/JOIN
SELECT *
FROM PRACTICE.dbo.EmployeeDemographics
JOIN
PRACTICE.dbo.EmployeeSalary
ON
EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--FULL OUTER JOIN
SELECT *
FROM PRACTICE.dbo.EmployeeDemographics
FULL OUTER JOIN
PRACTICE.dbo.EmployeeSalary
ON
EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--RIGHT OUTER JOIN
SELECT *
FROM PRACTICE.dbo.EmployeeDemographics
RIGHT OUTER JOIN
PRACTICE.dbo.EmployeeSalary
ON
EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--LEFT OUTER JOIN
SELECT *
FROM PRACTICE.dbo.EmployeeDemographics
LEFT OUTER JOIN
PRACTICE.dbo.EmployeeSalary
ON
EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID


