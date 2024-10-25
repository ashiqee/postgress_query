-- Active: 1729846484740@@127.0.0.1@5432@ph_university

CREATE DATABASE ph_university;

CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

DROP TABLE students;
DROP Table courses;
DROP Table enrollment;

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-05-12', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-03-22', 'A-', 'Canada'),
('Michael', 'Johnson', 21, 'A', 'Physics', 'michael.j@example.com', '2002-08-15', 'B+', 'UK'),
('Emily', 'Davis', 19, 'C', 'Engineering', 'emily.d@example.com', '2004-11-30', 'AB+', 'Australia'),
('David', 'Miller', 23, 'B', 'Business', 'david.m@example.com', '2000-06-18', 'O-', 'Germany'),
('Michael', 'Johnson', 21, 'A', 'Physics', 'michael.j@example.com', '2002-08-15', 'B+', 'UK'),
('Emily', 'Davis', 19, 'C', 'Engineering', 'emily.d@example.com', '2004-11-30', 'AB+', 'Australia'),
('David', 'Miller', 23, 'B', 'Business', 'david.m@example.com', '2000-06-18', 'O-', 'Germany'),
('Michael', 'Johnson', 21, 'A', 'Physics', 'michael.j@example.com', '2002-08-15', 'B+', 'UK'),
('Emily', 'Davis', 19, 'C', 'Engineering', 'emily.d@example.com', '2004-11-30', 'AB+', 'Australia'),
('David', 'Miller', 23, 'B', 'Business', 'david.m@example.com', '2000-06-18', 'O-', 'Germany');


SELECT * FROM students;

SELECT email FROM students;

SELECT email as "Student Email",age FROM students;

SELECT * FROM students ORDER BY dob ASC;

-- duplicate remove get unique value
SELECT DISTINCT country from students;
SELECT DISTINCT blood_group from students;


-- WHERE 
SELECT * from students
        WHERE country = 'USA';

SELECT * from students
        WHERE grade='A' AND course ='Physics';


SELECT * from students
        WHERE blood_group='AB+';


SELECT * from students
        WHERE country = 'USA' OR country='Australia';

SELECT * from students
        WHERE (country = 'USA' OR country='Australia') and age=20;



SELECT * from students
        WHERE age >= 20;

-- not EQUALS
SELECT * from students
        WHERE age <> 20;


SELECT upper(first_name) from students;

SELECT concat(first_name,' ',last_name) from students;

SELECT length(first_name) from students;


SELECT avg(age) from students;

SELECT max(length(first_name)) from students;


SELECT * from students
        WHERE NOT country = 'USA';


SELECT * from students
WHERE email is NOT NULL;


SELECT COALESCE(email,'Email not provided') as "Email", blood_group,first_name FROM students;


SELECT * FROM students WHERE country IN('USA','UK','Canada');

SELECT * FROM students WHERE country NOT IN('USA','UK','Canada');

SELECT * FROM students 
        WHERE dob BETWEEN '2000-01-01'AND '2004-01-01' ORDER BY dob;


SELECT * FROM students 
        WHERE first_name LIKE '%d';
SELECT * FROM students 
        WHERE first_name LIKE 'J%';
SELECT * FROM students 
        WHERE first_name LIKE '__n%';


SELECT * FROM students 
        WHERE first_name ILIKE 'j%';



-- LIMIT OFFSET for pagination

SELECT * FROM students LIMIT 3 OFFSET 2;

SELECT * FROM students LIMIT 3 OFFSET 2 * 0;
SELECT * FROM students LIMIT 3 OFFSET 2 * 1;
SELECT * FROM students LIMIT 3 OFFSET 2 * 2;
SELECT * FROM students LIMIT 3 OFFSET 2 * 3;


DELETE FROM students
        WHERE grade = 'B';
DELETE FROM students
        WHERE grade = 'C' AND country='USA';

SELECT * FROM students;


-- update Data 
-- be careFull must conditon use 

UPDATE students
        SET email ='default@email.com', age = 40
        WHERE student_id = 3;

