--Temp Table
select * from practice..EmployeeSalary

Drop table if exists #job
Create table #job ( 
jobtitle varchar(20),
avgsalary int

)
insert into #job
select JobTitle,AVG(salary)
from
practice..EmployeeSalary
GROUP By JobTitle,Salary

select * from #job
