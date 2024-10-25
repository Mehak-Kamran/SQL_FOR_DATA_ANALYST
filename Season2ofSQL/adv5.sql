--subqueries

--select
select EmployeeID,
(select avg(Age) from EmployeeDemographics) as avgAge
from EmployeeDemographics

--where
select * from EmployeeSalary
where salary in (
select salary from EmployeeDemographics
where salary>=38000
)

--from
select t. EmployeeID from (
select EmployeeID,JobTitle from EmployeeSalary) t