--stored procedures

--simple query we run 
--select EmployeeSalary.EmployeeID,JobTitle,avg(salary) as avgsalary,
--FirstName +' '+LastName as name ,age ,substring(gender,1,1) as gender
--from EmployeeSalary join EmployeeDemographics
--on EmployeeSalary.EmployeeID=EmployeeDemographics.EmployeeID
--group by EmployeeSalary.EmployeeID,JobTitle,
-- age ,gender,FirstName,LastName

-- lets run it through stored procedure 
create procedure detail
As
select EmployeeSalary.EmployeeID,JobTitle,avg(salary) as avgsalary,
FirstName +' '+LastName as name ,age ,substring(gender,1,1) as gender
from EmployeeSalary join EmployeeDemographics
on EmployeeSalary.EmployeeID=EmployeeDemographics.EmployeeID
group by EmployeeSalary.EmployeeID,JobTitle,
 age ,gender,FirstName,LastName



exec  detail