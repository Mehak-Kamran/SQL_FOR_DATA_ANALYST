--Common Table Expression (CTE)
--NOTE THAT CTE is not saved any where

select demo.FirstName +''+LastName as Name,demo.EmployeeID,
sal.Salary
from
PRACTICE.dbo.EmployeeDemographics as demo join 
PRACTICE.dbo.EmployeeSalary  as sal
on demo.EmployeeID=sal.EmployeeID

--now i have to  this info in sep table so that i can furthure query
--i will use cte

with employ_cte as
(
select demo.FirstName +''+LastName as Name,demo.EmployeeID,
sal.Salary
from
PRACTICE.dbo.EmployeeDemographics as demo join 
PRACTICE.dbo.EmployeeSalary  as sal
on demo.EmployeeID=sal.EmployeeID
)
select* from employ_cte 

--remb that to run the cte and select stat together bc cte is temp
---and its scope is finished as soon as its created so with every 
--use you have to create it 