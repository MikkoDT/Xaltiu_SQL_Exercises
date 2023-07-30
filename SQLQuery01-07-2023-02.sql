create DATABASE setex
-- ** Set Operators
create table fruits_1(
FruitName VARCHAR(100))
INSERT INTO fruits_1
VALUES
('Apple'),('Orange'),('Strawberry'),('Lemon'),('Avocado')

create table fruits_2(
FruitName VARCHAR(100))
INSERT INTO fruits_2
VALUES
('Lemon'),('Avocado'),('Grapefruit'),('Apricot')


-- UNION --
select * FROM fruits_1
UNION all
select * FROM fruits_2

select * FROM fruits_1
INTERSECT
select * FROM fruits_2

select * FROM fruits_1
EXCEPT
select * FROM fruits_2

-- ORDER BY --
select * FROM fruits_1
UNION 
select * FROM fruits_2
ORDER BY FruitName