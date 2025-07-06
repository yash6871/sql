create database mic;
use  mic;

create table data(roll_no int primary key,name varchar(30), marks int , grade varchar(10),
city varchar(20));
insert into data (roll_no,name,marks,grade,city) 
values(101,"shubhman",78,"A","Punjab"),
(102,"sai",88,"B","Tamilnadu"),
(103,"Rishab",56,"B","delhi");

select name,grade from data;


select* from data where marks > 70;