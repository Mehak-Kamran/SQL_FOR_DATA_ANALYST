--Group by and Order by

--1
SELECT * FROM EmployeeDemographics
ORDER BY EmployeeID DESC

--2
SELECT GENDER , COUNT(GENDER) AS COUNTING FROM EmployeeDemographics
GROUP BY GENDER
ORDER BY GENDER DESC

--3
SELECT * FROM EmployeeDemographics
ORDER BY 2 DESC