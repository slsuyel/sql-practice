CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (name, department, salary)
VALUES
('John', 'HR', 40000),
('Alice', 'HR', 50000),
('Bob', 'IT', 70000),
('David', 'IT', 90000),
('Emma', 'Finance', 60000),
('Rahim', 'Finance', 80000),
('Sakib', 'Marketing', 55000),
('Karim', 'Marketing', 75000);

SELECT * FROM employees;


SELECT MAX(salary)
FROM employees
WHERE department = 'HR';


SELECT *
FROM employees
WHERE salary > (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'HR'
);