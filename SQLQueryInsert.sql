-- Insert --
insert into people(name,age,city)
values
('Jade',20,'London')

select * from people

insert into people(name,age,city)
values
('Mary',119,'NY'),
('Martin',25,'London'),
('Rob',35,'Geneva'),
('Maria',42,'Paris'),
('Jon',28,'Toronto')

select * from people 

--Update --
update people 
set age = 29, city = 'Montreal'
where name = 'Mary'

select * from people 

-- Delete, Truncate and Drop --
delete from people
where name = 'Jade'
select * from people

truncate table people
select * from people

-- View --
create view people_vieww
as select * from people
select * from people_view

drop view people_view

-- Index --
create index ind1
on people (name)
select * from people

drop index ind1
on people
select * from people

-- Select statement (Syntax)--
select * from countries