-- ** SQL Joins **

-- INNER JOINS --
select *
from departments

select *
from locations

select d.department_id,d.department_name,l.city,l.location_id
from departments d
inner join locations l
on d.location_id = l.location_id

-- SELF-JOINS --

select e.first_name,m.first_name
from employees e
join employees m
on e.manager_id = m.employee_id

-- Additional Conditions to a Join

select * from employees e
join departments d
on (d.department_id = e.department_id)
and e.manager_id =100

select e.employee_id,d.department_name,e.manager_id
from employees e
join departments d
on (d.department_id = e.department_id)
and e.manager_id =100

-- Three-Way Joins with ON Clause
select e.employee_id,d.department_name,e.manager_id
from employees e
join departments d
on (d.department_id = e.department_id)
join locations l
on d.location_id = l.location_id

select e.employee_id,d.department_name,e.manager_id,l.city
from employees e
join departments d
on (d.department_id = e.department_id)
join locations l
on d.location_id = l.location_id

-- Non-equi joins --
select * from employees e
join jobs j 
ON e.salary
between j.min_salary and j.max_salary

-- LEFT OUTER JOIN --
select e.first_name, d.department_id, d.department_name
from employees e
LEFT OUTER JOIN departments d
ON (e.department_id=d.department_id)

-- RIGHT OUTER JOIN --
select e.first_name, d.department_id, d.department_name
from employees e
RIGHT OUTER JOIN departments d
ON (e.department_id=d.department_id)

-- FULL OUTER JOIN --
select e.first_name, d.department_id, d.department_name
from employees e
FULL OUTER JOIN departments d
ON (e.department_id=d.department_id)

-- Creating CROSS JOINS --
select e.first_name, d.department_id, d.department_name
from employees e
CROSS JOIN departments d


