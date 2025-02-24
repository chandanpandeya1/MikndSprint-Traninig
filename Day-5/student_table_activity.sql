create database abc;
use abc;

create table student(student_id INT primary key, name varchar(100), age INT, major varchar(100), gpa decimal, enrollment date);

ALTER TABLE student MODIFY gpa DECIMAL(10, 2);

INSERT INTO student (student_id, name, age, major, gpa, 
enrollment)
VALUES 
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'),
(102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'),
(103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'),
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'),
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'),
(106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28');


-- 1
select * from student where major='Computer Science';

-- 2
select * from student where gpa>3.5 or major = 'Mathematics';

-- 3
select * from student where age>20 and gpa<3.0;

-- 4
select * from student where enrollment between '2023-01-01' and '2023-12-31';

-- 5
select distinct major from student;

-- 6 
SELECT * FROM student WHERE student_id IN (101, 102, 103);

-- 7 
select * from student where gpa IS NULL;

-- 8 
select * from student where name is not null;

-- 9
select * from student where age = 18 or age = 22;

-- 10
select * from student where age<19 or gpa>3.8;

-- 11
select * from student where gpa between 2.5 and 3.5 and major = 'Biology';

-- 12
select * from student order by name asc, gpa desc;