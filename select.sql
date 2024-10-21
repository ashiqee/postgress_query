

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

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-05-12', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-03-22', 'A-', 'Canada'),
('Michael', 'Johnson', 21, 'A', 'Physics', 'michael.j@example.com', '2002-08-15', 'B+', 'UK'),
('Emily', 'Davis', 19, 'C', 'Engineering', 'emily.d@example.com', '2004-11-30', 'AB+', 'Australia'),
('David', 'Miller', 23, 'B', 'Business', 'david.m@example.com', '2000-06-18', 'O-', 'Germany');


SELECT * FROM students;

SELECT email FROM students;

SELECT email as "Student Email",age FROM students;

SELECT * FROM students ORDER BY dob ASC;