use quanlysinhvien;
select *
from Student
where StudentName like 'h%' ;

select * from student 
where Status = 1;

select * from subject
where Credit < 6 and Credit > 2;

SET SQL_SAFE_UPDATES = 0;
update Student 
set ClassId = 2
where studentname = 'Hung' ;

select s.StudentName ,  sub.SubName ,  m.mark
from Student s join Mark m on s.StudentId = m.StudentId
join subject sub on m.SubId = sub.SubId 