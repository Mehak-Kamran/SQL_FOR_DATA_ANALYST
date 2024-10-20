--partition by
select gender , count(gender) as countofgender from
practice.dbo.EmployeeDemographics
group by gender


--only gender col can be retrieved but i also want 
--name col, here comes the hero i.e partition by

select FirstName, count(gender) over (partition by gender) as countofgender 
from
PRACTICE.dbo.EmployeeDemographics
