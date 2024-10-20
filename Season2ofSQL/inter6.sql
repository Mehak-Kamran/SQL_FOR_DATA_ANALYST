--Aliasing

select * from 
Practice.dbo.EmployeeDemographics

--make a new col 'full name' by combining fname and lname; use alias
select FirstName +' '+LastName As Full_Name
from Practice.dbo.EmployeeDemographics

--can also do alias with table name
select SAL.Salary from 
PRACTICE.dbo.EmployeeSalary As SAL

--a bit complex
--output names and sal of employee by joing two tables 
--and aliasing coloumn name and table name
select demo.FirstName as Name , sal.Salary from 
PRACTICE.dbo.EmployeeDemographics as demo join 
PRACTICE.dbo.EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID