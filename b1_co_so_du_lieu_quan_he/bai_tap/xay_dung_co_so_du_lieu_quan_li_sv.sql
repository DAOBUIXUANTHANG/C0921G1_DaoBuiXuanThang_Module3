use student_management
create table Class (
id int primary key,
`name` varchar(45)
)

create table Teacher (
id int primary key,
`name` varchar(45),
age int,
country varchar(45))
