--CASE STATEMENT
SELECT * ,
case
    when gender='male' then '10'
	else '100' 
end as score
FROM PRACTICE.dbo.EmployeeDemographics

--question
--CEO want to raise salary of employees based on their 
--job tiltle i.e employees in sales dep will have 10% raise in their salary and employees in accounts department
-- will have 5%  raise in their salary meanwhile hr will get 50 cents increment (I hate HRS  )

SELECT EmployeeDemographics.EmployeeID,FirstName,
LastName,JobTitle,Salary ,
CASE
   WHEN JobTitle='SALESMAN' THEN SALARY +(Salary*0.10)
   WHEN JobTitle='ACCOUNTANT' THEN SALARY +(Salary*0.05)
   WHEN JobTitle='HR' THEN SALARY +(Salary*0.000001)
   ELSE  SALARY +(Salary*0.01)
END AS INCREASED_SALARY
FROM PRACTICE.DBO.EmployeeDemographics
JOIN PRACTICE.dbo.EmployeeSalary 
ON EmployeeDemographics.EmployeeID=
EmployeeSalary.EmployeeID
