CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

SELECT * FROM students;

INSERT INTO students (
    first_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)
VALUES
('Rabbinur', 'Islam', 24, 'A+', 'Computer Science', 'rabbinur@example.com', '2001-05-15', 'O+', 'Bangladesh'),
('Suyel', 'Ahmed', 22, 'A', 'Software Engineering', 'suyel@example.com', '2003-02-10', 'A+', 'Bangladesh'),
('Hasan', 'Mahmud', 23, 'B+', 'Electrical Engineering', 'hasan@example.com', '2002-08-20', 'B+', 'Bangladesh'),
('Sakib', 'Hossain', 21, 'A-', 'Computer Science', 'sakib@example.com', '2004-01-12', 'AB+', 'Bangladesh'),
('Nusrat', 'Jahan', 22, 'A+', 'Business Administration', 'nusrat@example.com', '2003-07-25', 'O-', 'Bangladesh');


select * from students;


select age FROM students
WHERE age > 22;

SELECT first_name, age
FROM students;


SELECT *
FROM students
WHERE age > 20
AND country = 'Bangladesh';



SELECT *
FROM students
WHERE age = 22
OR age = 24;


SELECT *
FROM students
WHERE NOT country = 'Bangladesh';


SELECT *
FROM students
WHERE age IN (21, 22, 24);


INSERT INTO students (
    first_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)
VALUES
('John', 'Smith', 23, 'A', 'Computer Science', 'john@example.com', '2002-03-15', 'O+', 'USA'),
('Emma', 'Wilson', 21, 'A+', 'Business', 'emma@example.com', '2004-01-10', 'A+', 'Canada'),
('Ali', 'Khan', 24, 'B+', 'Engineering', 'ali@example.com', '2001-07-20', 'B+', 'Pakistan'),
('Rahul', 'Sharma', 22, 'A', 'Mathematics', 'rahul@example.com', '2003-05-25', 'O-', 'India'),
('Chen', 'Wei', 20, 'A+', 'Physics', 'chen@example.com', '2005-02-14', 'AB+', 'China');



SELECT * fROM students

SELECT DISTINCT country, age FROM students 


SELECT LOWER(first_name)
FROM students;


SELECT first_name, LENGTH(first_name)
FROM students;


SELECT *
FROM students
WHERE country IN ('Bangladesh', 'India', 'USA');



SELECT *
FROM students
WHERE age BETWEEN 20 AND 25;



SELECT *
FROM students
WHERE dob BETWEEN '2001-01-01' AND '2003-12-31';


SELECT *
FROM students
WHERE first_name LIKE 'S%';

SELECT *
FROM students
WHERE first_name LIKE '%n';

SELECT *
FROM students
WHERE first_name LIKE '%a%';


SELECT *
FROM students
WHERE first_name LIKE '_____';


SELECT *
FROM students
LIMIT 5;


SELECT *
FROM students
LIMIT 5 OFFSET 5;