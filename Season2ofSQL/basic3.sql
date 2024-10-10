--where 
-- =, <> ,< , >, and , or , like , null ,not null , in 
select * from EmployeeDemographics
--1
select FirstName
from EmployeeDemographics
where EmployeeID='1008'
--2
select FirstName
from EmployeeDemographics
where EmployeeID<>'1008'

--3
select * from EmployeeDemographics
where age<=35

--4
select * from EmployeeDemographics
where age>=35

--5
select * from EmployeeDemographics
where age<=35 And gender='male'

--6
select * from EmployeeDemographics
where age<=35 OR gender='FEMALE'

--7
--WILDCARD
select * from EmployeeDemographics
where FirstName  LIKE '%Y'

--8
SELECT * FROM EmployeeDemographics
WHERE FIRSTNAME='JIM' OR FirstName='MICHAEL' 
--instead we ca use IN
SELECT * FROM EmployeeDemographics
WHERE FIRSTNAME IN('JIM','MICHAEL')

--9
SELECT * FROM EmployeeDemographics
WHERE FirstName IS NOT NULL

--10
SELECT * FROM EmployeeDemographics
WHERE FirstName IS NULL

