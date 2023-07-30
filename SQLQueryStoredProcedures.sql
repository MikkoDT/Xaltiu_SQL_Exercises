-- **Stored Procedures
create procedure emp_dept
as
begin

select*
from employees e
join departments d
on (e.department_id = d.department_id)

end
exec emp_dept
--drop emp_dept >> deleting procedure

-- creating procedure with parameter --
create procedure emp_query
(@id INT) as
begin
select last_name,salary
from employees
where employee_id = @id
end
exec emp_query 101

create procedure emp_jobid_param
(@job_id VARCHAR(20)) as
begin
select *
from employees
where job_id = @job_id
end
exec emp_jobid_param 'IT_PROG'

create procedure emp_jobid_param
(@job_id VARCHAR(20)) as
begin
select *
from employees
where job_id = @job_id
end
exec emp_jobid_param 'IT_PROG'