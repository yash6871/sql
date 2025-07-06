create database college2;
use college2;

create table student2(
rollno int primary key,
name varchar(20),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student2
(rollno, name , marks, grade, city)
values
(101,"anil", 78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"chetan",85,"b","mumbai"),
(104,"dhruv",96,"f","delhi"),
(105,"emanuel",12,"f","delhi"),
(106,"farah",82,"b","delhi");

select * from student2 where marks +10>100;
select * from student2 where city in ("pune","delhi");
select * from student2 limit 3;
select * from student2 where marks >50 order by name asc;
select min(marks) from student2;
select max(marks) from student2;
select avg(marks) from student2;
select count(marks) from student2;

select sum(marks) from student2;
select city,count(name) from student2 group by city;
select city, avg(marks) from student2 group by city order by city asc;
select count(name),city  from student2 group by city having  max(marks)>80;

update student2 set marks= marks+1;
select*from student2;
delete from student2 where marks<34;