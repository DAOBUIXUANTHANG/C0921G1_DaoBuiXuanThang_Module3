use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from `subject`
where Credit = ( select max(Credit) from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select *
from `subject` 
where SubId = ( select subID from mark where mark = (select max(mark.Mark) from mark));

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select * from student;

select * , avg(ifnull(m.Mark, 0)) diem_tb
from student s left join mark m on m.StudentId = s.StudentId
group by s.StudentId
order by m.Mark desc