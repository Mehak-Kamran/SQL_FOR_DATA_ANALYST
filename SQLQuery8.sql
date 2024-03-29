USE [MYSQL]
GO
/****** Object:  StoredProcedure [dbo].[BAMP]    Script Date: 1/3/2024 4:36:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[BAMP]
@POSITION NVARCHAR(50)
AS
DROP TABLE  IF EXISTS #TEMPTABLE
CREATE TABLE #TEMPTABLE
(SALARY INT , POSITION VARCHAR(50), GENDER VARCHAR(50))

INSERT INTO  #TEMPTABLE
select AVG (EMPLOYEEDESIGNATION.SALARY) OVER  (partition by (employee.gender)) AS SALARY, employeedesignation.POSITION , employee.gender
from  employee join EMPLOYEEDESIGNATION on employee.employeeid=EMPLOYEEDESIGNATION.EMPLOYEEID
WHERE employeedesignation.POSITION=@POSITION
SELECT* FROM #TEMPTABLE