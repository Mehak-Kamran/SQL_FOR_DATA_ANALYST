--CASE STATEMENT
SELECT * ,
case
    when gender='male' then '10'
	else '100' 
end as score
FROM PRACTICE.dbo.EmployeeDemographics

--question
--CEO want to raise salary of employees based on their 
--job tiltle i.e sales will get 10% salary raised and accountant
-- will gain 5% salary raised meanwhile hr will gain 50 cents 
--salary raise (I hate HRS  )

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