-- GETDATE --
select GETDATE()

-- DATEPART --
select * from employees

select DATEPART(year,[hire_date]) as year
from employees

-- DATEADD --
select DATEADD(day,2,'2018-12-31')

-- DATEDIFF --
select DATEDIFF(month,'2018-12-31','2019-03-15')

-- DAY --
select DAY('2030-12-20')

-- LOWER --
select LOWER('EMPLOYEES') 

-- UPPER --
select UPPER('employees')

-- FORMAT --
select FORMAT(salary,'#,##')
from employees

-- SUBSTRING --
select SUBSTRING('sky is blue',3,7)

-- REPLACE --
select REPLACE('Employee belongs to HR dept.','HR','Finance')

-- LTRIM --
select LTRIM(' Text')

-- CONCAT --
select CONCAT('Welcome to ','SQL tutorial!')

-- ROUND --
select ROUND(120.19,-2)

-- ABS --
select ABS(-50)

-- CEILING --
select CEILING(100.49)

-- FLOOR --
select FLOOR(100.49)

-- CASE --
select * from locations
select *,
	CASE country_id WHEN 'US' THEN 'United States of America'
                 WHEN 'CA' THEN 'Canada'
				 WHEN 'UK' THEN 'United Kingdom'
 ELSE 'Other country' END AS Country
FROM locations

-- ISNULL --
select * from employees
select *,
ISNULL(manager_id,000) 
from employees

-- COALESCE --
select COALESCE(null,13,24,35,42)

select COALESCE(13,24,null,35,42)

select first_name,last_name,
COALESCE(commission_pct,0.4)
email FROM employees
ORDER BY first_name, last_name

-- ** Aggregate Functions

-- COUNT --
select COUNT(*)
from employees

-- SUM --
select SUM(salary)
from employees

select SUM(salary) 'Total Salary'
from employees

-- AVG --
select AVG(salary) 'Average Salary'
from employees

-- MAX --
select MAX(salary) 'Maximum Salary'
from employees

-- MIN --
select MIN(salary) 'Minimum Salary'
from employees

-- GROUP BY --
select * from employees
select job_id, avg(salary)
from employees 
group by job_id

-- HAVING --
select job_id, sum(salary)
from employees 
group by job_id
having job_id = 'IT_PROG'

-- ORDER BY --
select FIRST_NAME,SALARY
from employees
ORDER BY SALARY

select FIRST_NAME,SALARY
from employees
ORDER BY SALARY DESC



