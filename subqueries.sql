create  database sub;
use sub;
create table student(rollno int,name varchar(10),marks int);

insert into student values
(101,"anil",78),(102,"bhumika",93),(103,"chetan",85),
(104,"dhruv",96),(105,"ema",92),(106,"rushi",82);
select * from student where marks > (select avg(marks) from student);

select * from student;
select avg(marks) from student;
select * from student where rollno %2=0;
select * from student where rollno in (select rollno from student where rollno %2=0);

create view view1 as 
select rollno,name from student;

select*from view1;