-- **Function --

create function tax1
(@value int)
returns int
as
begin
return (@value *0.08)
end;

select employee_id, last_name, salary, HR_Scripts.dbo.tax1(salary) as tax_salary
from HR_Scripts.dbo.employees