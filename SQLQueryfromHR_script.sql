select * from countries

select country_id, country_name
from countries

select last_name, salary
from employees 

select last_name,salary,salary+300
from employees

select last_name,salary,12*(salary+100)
from employees

select * from regions

 -- Defining a Null value 

select last_name,job_id,commission_pct
from employees

-- Defining a Column Alias --

select last_name as Name,job_id,commission_pct as comm
from employees

select last_name AS
name, commission_pct
comm
from employees

select last_name"Name",
salary*12"Annual Salary"
from employees

-- Duplicate Rows --

select department_id
from employees

select distinct department_id
from employees

-- Using Where Clause -- 
select employee_id,last_name,job_id,department_id
from employees
where department_id = 90

select * from employees
where department_id = 90

select first_name,job_id,salary
from employees 
where department_id = 90

select first_name,job_id,salary,department_id
from employees 
where department_id = 90

select first_name,job_id,salary,department_id
from employees 
where department_id = 60

-- Character Strings and Dates using Where clause --
select first_name,job_id,salary,department_id
from employees 
where first_name = 'David'

-- Comparison Conditions --
select last_name,salary
from employees
where salary <= 3000

select * from employees
where salary <= 3000

select last_name, salary
from employees
Where salary between 2500 and 3500

select first_name, manager_id, salary
from employees
Where salary between 2500 and 3500

-- Using IN Condition --
SELECT employee_id,last_name,salary,manager_id
from employees
where manager_id IN (100,101,201)

SELECT * from employees
where manager_id IN (100, 101, 102)

-- Like Condition --
select first_name
from employees
where first_name LIKE'S%'

select first_name
from employees
where first_name LIKE'_o%'

-- Null Conditions --

SELECT last_name, manager_id
from employees
where manager_id is null

select * from employees
where manager_id is null



select first_name
from employees
where first_name LIKE'M%'

-- Logical Conditions --

select employee_id,last_name,job_id,salary
from employees
where salary>=10000 AND job_id like '%Man%'

select * from employees
where salary >= 10000 and job_id like'%MAN'

select first_name,salary,job_id
from employees
where salary >= 10000 or job_id like'%MAN'

select last_name,job_id
from employees
where job_id
NOT in ('IT_PROG','ST_CLERK','SA_REP')

select * from employees
where manager_id not in (100,101,102)

-- ORDER BY clause

select last_name,job_id,department_id,hire_date
from employees
order by last_name

select last_name,job_id,department_id,hire_date
from employees
order by last_name desc

select last_name "Name"
from employees
order by Name

--TOP Clause--
select Top 5 last_name,salary
from employees
order by salary 

select Top 5 last_name,salary
from employees
order by salary desc

