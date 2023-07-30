-- **Subquery

-- Single-row subquery --
select last_name, first_name, salary 
from employees 
where salary >
			  (select salary
			  from employees
			  where first_name = 'Julia')

-- Single-row subquery with Group Functions--
select min(salary), department_id
from employees 
group by department_id
having min(salary) >
					(select min(salary)
					from employees
					where department_id = '50')

-- Single-row subquery & Multi level Subquery--
select last_name, job_id, salary
from employees 
where job_id =		(select job_id
					from employees
					where employee_id = 100)

AND salary >		(select salary
					from employees
					where employee_id = 101)

-- Multi row subquery - ALL Operator--
select employee_id, last_name, job_id, salary
from employees 
where salary < all(select salary 
				from employees
				where job_id='IT_prog')

and job_id <> 'IT_prog'

-- Multi row subquery - IN Operator--
select *
from departments
where department_id in (select department_id
							from employees
							group by department_id
							having max(salary)>10000)


