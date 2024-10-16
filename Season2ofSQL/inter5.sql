
select * 
from PRACTICE.dbo.EmployeeDemographics
--update
update PRACTICE.dbo.EmployeeDemographics
set Age=22,gender='female'
where FirstName='Holly' and LastName='Flax'

--delete
Delete from 
Practice.dbo.EmployeeDemographics
where EmployeeID=1011