--string functions

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

--trim, ltrim,rtrim
select employeeId,trim(EmployeeID) from EmployeeErrors
select employeeId,ltrim(EmployeeID) from EmployeeErrors
select employeeId,rtrim(EmployeeID) from EmployeeErrors

--replace
select lastName,replace(LastName,'- Fired','') from EmployeeErrors

--lower, upper
select firstname, lower(FirstName) 
from EmployeeErrors

select firstname, upper(FirstName) 
from EmployeeErrors

--subString
select lastname , SUBSTRING(lastname,1,3) from EmployeeErrors
