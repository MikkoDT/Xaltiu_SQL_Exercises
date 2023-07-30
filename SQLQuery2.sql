insert into people(name, age, city)
values
('Martin',25,'London'),
('Rob',35,'Geneva'),
('Maria',42,'Paris'),
('Jon',28,'Toronto')
select * from people

update people 
set age = 23 , city = 'Mexico'
where name = 'Mary'
select * from people

