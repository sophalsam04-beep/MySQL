-- ADVANCE SQL PROGRAMMING
-- INNER JOIN EXAMPLES

-- Database creation is database-specific.
-- In MySQL or SQL Server, this would usually be:
-- CREATE DATABASE EMPLOYEE;
-- USE EMPLOYEE;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(300)
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    student_id INT,
    dept_name VARCHAR(200),
    dept_address VARCHAR(300),
    salary INT,
    dept_course VARCHAR(300)
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(200),
    enrollments VARCHAR(200),
    quantity INT,
    price INT,
    total_employee INT
);

INSERT INTO students (id, name) VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');

INSERT INTO department (dept_id, student_id, dept_name, dept_address, salary, dept_course) VALUES
    (10, 1, 'Computer Science', 'Block A', 50000, 'DBMS'),
    (11, 2, 'Mathematics', 'Block B', 45000, 'Statistics'),
    (12, 4, 'Physics', 'Block C', 47000, 'Mechanics');

INSERT INTO employee (emp_id, emp_name, enrollments, quantity, price, total_employee) VALUES
    (1, 'Alice', 'CS101', 5, 200, 1000),
    (2, 'Bob', 'MATH201', 3, 150, 450),
    (3, 'Charlie', 'PHY301', 4, 180, 720);

-- SYNTAX
-- SELECT Columns
-- FROM Table1
-- INNER JOIN Table2
--     ON Table1.column = Table2.column;

SELECT s.name, d.dept_course
FROM students AS s
INNER JOIN department AS d
    ON s.id = d.student_id;

-- COLUMN ALIAS SYNTAX
-- SELECT column_name AS alias_name FROM table_name;
-- SELECT column_name alias_name FROM table_name;

SELECT dept_name AS dn
FROM department;

SELECT dept_name dn
FROM department;

SELECT dept_name AS dept_name_alias, dept_address AS da
FROM department;

-- TABLE ALIAS SYNTAX
-- SELECT t.column_name FROM table_name AS t;
-- SELECT t.column_name FROM table_name t;

SELECT s.name, d.dept_course
FROM students s
JOIN department d
    ON s.id = d.student_id;

-- USING ALIAS WITH QUOTES
SELECT emp_name AS 'emp_name'
FROM employee;

-- ALIAS USING EXPRESSION / FUNCTION
SELECT COUNT(*) AS total_employee
FROM employee;

SELECT quantity * price AS total_employee
FROM employee;

SELECT e.enrollments, d.dept_course
FROM employee e
JOIN department d
    ON e.emp_id = d.student_id;




