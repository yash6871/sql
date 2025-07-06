create database lol;
use lol;


create table student( student_id int primary key,name varchar(10));
insert into student values(101,"adam"),(102,"bob"),(103,"casey");


create table course(tudent_id int primary key,course varchar(10));
insert into course values(102,"english"),(105,"math"),(103,"science"),(107,"cs");
select*from course;
alter table course change tudent_id student_id int ;

-- inner join
select*from student inner join course on student.student_id=course.student_id;

-- left join
select*from student as s left join course  as c on s.student_id=c.student_id;

-- right join
select*from student right join course on student.student_id=course.student_id;

-- full join
select*from student left join course on student.student_id=course.student_id union select * from student right join course
on student.student_id=course.student_id;


-- left exclusive join
select*from student left join course
 on student.student_id=course.student_id
 where course.student_id is null;
 
 -- right exclusive join
 select *from student
 right join course
 on student.student_id=course.student_id
 where student.student_id is null;