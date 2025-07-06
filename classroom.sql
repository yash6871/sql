create database temp;

use temp;

create table student( id int primary key,name varchar(20),age int not null);
insert into student values(1,"yash",21);
insert into student values(2,"jeff",22);

select * from student;
show databases;
drop database temp1;
show tables;
insert into student values(3,"nitin",56);
insert into student (id,name,age) values(4,"mukesh",55),(5,"nita",44),(6,"lokesh",34);
select * from student;


create database XYZ;
use XYZ;

create table employee(id int primary key, name varchar(20),salary int);
insert into employee (id,name,salary) values (1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
select * from employee;

create table temp(id int not null,primary key(id));
insert into temp values(1),(2);
select * from temp;

create table tab(age int check(age >=18));
insert into tab values(36);