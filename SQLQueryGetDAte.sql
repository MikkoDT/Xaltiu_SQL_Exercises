select GETDATE ()
select *
from employees

select DATEPART (year,[hire_date]) as year
from employees

select DATEADD (day,2,'2018-12-31')

select DATEDIFF(DAY,'2018-12-31','2019-03-15')