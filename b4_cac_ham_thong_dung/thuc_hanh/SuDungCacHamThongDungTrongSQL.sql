use quanlysinhvien;

-- hien thi so luong sinh vien o tung noi
SELECT Address, COUNT(StudentId) AS 'so luong hoc vien'
FROM Student
GROUP BY Address;

-- tinh diem trung binh moi mon hoc cua hoc vien
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S
         join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

-- hien thi thong tin cac hoc vien co diem lon nhat.
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

