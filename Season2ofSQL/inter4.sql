--having clause
--use with aggregate function

select * from EmployeeSalary
select JobTitle,avg(Salary) as avg_salary from EmployeeSalary

group by JobTitle
having avg(salary)>=1
