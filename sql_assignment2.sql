-- 1
-- Create database 
CREATE DATABASE edu_institute;

-- create students table
USE edu_institute;

CREATE TABLE students (
	student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);

-- insert records to the database
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES
    (1, 'Alice', 20, 'F', '2023-09-01', 'Computer Science'),
    (2, 'Bob', 22, 'M', '2023-08-15', 'Engineering'),
    (3, 'Charlie', 21, 'M', '2023-08-20', 'Data Science'),
    (4, 'Diana', 23, 'F', '2023-09-05', 'Biology'),
    (5, 'Eve', 24, 'F', '2023-09-10', 'Mathematics'),
    (6, 'Fred', 20, 'M', '2023-09-11', 'Computer Science'),
    (7, 'Esther', 19, 'F', '2023-08-15', 'Data Science'),
    (8, 'Erick', 21, 'M', '2023-08-20', 'Data Science'),
    (9, 'Angie', 23, 'F', '2023-09-05', 'Biology'),
    (10, 'Brian', 22, 'M', '2023-08-15', 'Engineering');
    
-- select all students enrolled in data science
SELECT *
FROM students
WHERE program = 'Data Science';

-- find total students, display as total students
SELECT COUNT(*) AS Total_students
FROM students;

-- display today's date in new column
SELECT CURDATE() AS "Today's Date";

-- display student name in uppercase, enrollment date
SELECT 
	  UPPER(name) AS student_name,
      enrollment_date
FROM students;

-- display number of students in each program in descending order
SELECT 
	  program, 
      COUNT(*) AS Number_of_Students 
FROM students 
GROUP BY program 
ORDER BY COUNT(*) DESC;

-- Query to find the youngest student's name and age
SELECT 
	  name, 
      MIN(age) AS age 
FROM students;

