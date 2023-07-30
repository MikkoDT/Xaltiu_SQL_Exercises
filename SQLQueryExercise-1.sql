create DATABASE Exercise_customer

create TABLE customer(
cust_number VARCHAR(6),
firstname VARCHAR(30),
lastname VARCHAR(30),
country VARCHAR(15),
cust_contact_no bigint,
occupation VARCHAR(10),
cust_dob DATE,
CONSTRAINT customer_custid_pk PRIMARY KEY (cust_number)
)

insert into customer values
('C001','Henry','joad','Albania',9543198345,'SERVICE','1976-12-06'),
('C002','Sally','feild','Botswana',98765432,'IT_MGR','1987-10-02'),
('C003','John','cooper','UK',89765243,'Actor','1978-11-01'),
('C004','Gray','ford','Brazil',91238765,'Sportsman','1990-10-02'),
('C005','Paul','newman','Costa Rica',987651234,'Lawyer','1980-02-03'),
('C006','Robert','luy','Ecuador',901782365,'Doctor','1970-01-12'),
('C007','Russel','hanks','Finland',98761324,'IT_MGR','1987-12-01'),
('C008','John','hackman','Mexico',87651290,'Doctor','1967-12-06'),
('C009','Emma','stone','Netherlands',98887655,'Lawyer','1987-11-16'),
('C0010','Megan','fox','Albania',98700123,'Actor','1990-01-06')

select * from customer

-- 1. Write a query to fetch all customer's from Albania. 
select firstname, lastname, country 
from  customer
where country = 'Albania'

-- 2. Write a query to fetch all customers whose occupation is not IT_MGR & SERVICE (columns to fetch: firstname, country, occupation)
select firstname, country, occupation
from customer 
where not occupation = 'IT_MGR' 
and not occupation = 'SERVICE'

select firstname, country, occupation
from customer 
where occupation not in('IT_MGR','SERVICE')

-- 3. Write a query to fetch all customers whose occupation is "Lawyer" (columns to fetch: lastname, occupation)
select lastname, occupation
from customer
where occupation = 'Lawyer'

-- 4. Write a query to fetch all customers whose occupation is "Doctor" OR "Lawyer" (columns to fetch: firstname, country, occupation)
select firstname, country, occupation
from customer
where occupation in('Doctor','Lawyer')