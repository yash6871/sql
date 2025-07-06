create database shop;
use shop;
create table business(
customer_id int primary key,
customer varchar(20),
mode varchar(15),
city varchar(15)
);

insert into business values(101,"olivia","netbanking","portland");
insert into business values(102,"ethan sinclair","credit card","miami"),
(103,"maya hernandez","credit card","seattle"),
(104,"liam donovan","netbanking","denver"),
(105,"sophia nguyen","credit card","new orieane"),
(106,"caleb foster","debit card","minneapolis"),
(107,"ava patel","debit card","phoenix"),
(108,"lucas carter","netbanking","boston"),
(109,"isabella martinez","betbanking","nashville"),
(110,"jackson brooks","credit card","boston");

select * from business;
select mode,count(customer) from business group by mode;
