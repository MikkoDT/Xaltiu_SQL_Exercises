create database person
create table people(
name varchar(50),
age int,
city varchar (30)
)
alter table people
add phone_no int

alter table people
alter column phone_no varchar(30)

drop table people 

create table dept(
did int primary key,
dfname varchar(50) not null,
dlname varchar(50)
)

create table emp(
eid int primary key,
ename varchar(30),
salary money check(salary > 0)
)

create table product(
pid int primary key,
pname varchar(40), 
empid int,
foreign key (empid) references emp (eid)
)
alter table product
add constraint pd_un unique (pname)

