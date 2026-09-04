

-- =============================================
-- =============================================

-- Limit with WHERE
SELECT * FROM employees
WHERE department = "IT";
LIMIT 6;



-- Limit with ORDER BY
SELECT * FROM users
WHERE department = "IT"
ORDER BY salary DESC
LIMIT 4;


-- Limit with OFFSET
SELECT * FROM users
WHERE department = "Software developer";
ORDER BY id
LIMIT 5 OFFSET 10;


SELECT * FROM emp
WHERE department = "Architecture";
ORDER BY id
LIMIT 5,10;


-- Limit with JOIN
SELECT e.name, d.department_name
FROM Employee e
JOIN departments ON e.departments_id = d.id
ORDER BY e.salary DESC
LIMIT 5;


SELECT g.name, d.department_name
FROM grade g
JOIN departments ON g.department_id = g.gid;
ORDER BY g.salary ASC
LIMIT 10;

-- LIMIT with WHERE & JOIN
SELECT e.name, e.salary, d.department_name
FROM employee e
JOIN departments d ON e.department_id = d.id
WHERE d.department_name = "Sales"
ORDER BY e.salary DESC
LIMIT 9;


SELECT * FROM users
WHERE age = 25;


SELECT * FROM products
WHERE price > 200;
SELECT * FROM department
WHERE amount <=500;


SELECT * FROM users
ORDER BY age DESC;



-- Logical Operator in MySQL
    -- AND
-- true and true
SELECT * FROM users WHERE department = "Software developer" AND salary < 500;
SELECT * FROM users WHERE department = "Mobile Apps" AND salary > 200;
SELECT name, age FROM users WHERE role = "Instructor" AND salary >=300;
SELECT * FROM student WHERE age >=26 AND gender = "Male";


    -- OR
-- true or false
SELECT * FROM users WHERE age >=18 OR gender = "Female";
SELECT * FROM users WHERE age<=18 OR address = "Phnom Penh";
SELECT name, age, address FROM users WHERE salary >400 OR gender = "Male";
SELECT * FROM users WHERE age >=19 OR salary = 400;


-- NOT
-- using to not result true
SELECT * FROM users WHERE NOT gender = "Male";
SELECT * FROM users WHERE NOT age <18;


-- XOR
-- have one conditional true but not both true
SELECT * FROM users WHERE age >=19 XOR salary = 300;
SELECT * FROM users WHERE age >=22 XOR salary < 200;


CREATE TABLE student (
    id INT,
    name VARCHAR(255),
    age INT,
    course VARCHAR(255),

);

USE student;

SELECT * FROM student
WHERE course = "Programing" AND age >=18;

SELECT * FROM student
WHERE course = "Khmer literature" OR age <=19;

SELECT * FROM student
WHERE NOT course = "PHP Programing";

SELECT * FROM student
WHERE course = "Programing" XOR age>19;


SELECT s.student_id, s.age
FROM student s
JOIN e.employee_name ON s.employee_name = s.id;
ORDER BY id DESC;
LIMIT 8;




-- BETWEEN AND
-- using to checking value is near by the place
SELECT * FROM student WHERE age BETWEEN 18 AND 25;
SELECT * FROM users WHERE age BETWEEN  17 AND 19;
SELECT * FROM student WHERE salary BETWEEN 500 AND 200;

