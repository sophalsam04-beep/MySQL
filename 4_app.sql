
    -- Create table name and create database
CREATE TABLE Person(
    id INT,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    age INT,
);

    -- using to Class
USE Person;

    -- BETWEEN AND
SELECT * FROM Person WHERE age BETWEEN 18 AND 25;

    -- In
SELECT * FROM Person
WHERE city in ("Phnom Penh", "kandal","Stoeung T'reng");

    -- ORDER BY
SELECT * FROM Person
WHERE age >=18
ORDER BY id ASC
GROUP BY name;



    -- In
-- Syntax
-- SELECT Column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, value3,...);

CREATE TABLE Employee(
    id INT,
    name VARCHAR(255),
    department VARCHAR(255),
);

USE Employee;

    -- claude "In"
SELECT * FROM Employee
WHERE department IN ('Sale','IT','HR');

SELECT * FROM users
WHERE age IN (20,21,22);

SELECT * FROM student
WHERE course IN ("Software developer","software engineer","Mobile Apps");


    -- using wit OR
SELECT * FROM Employee
WHERE department = 'sale'
    OR department = 'IT'
    OR department = 'HR';


    -- NOT IN
SELECT * FROM Employee
WHERE department NOT IN ('sale','IT');


    -- IN using with Subquery
SELECT name FROM Employee
WHERE department_id IN (
    SELECT id FROM student WHERE location = "Phnom Penh"

    );

SELECT city FROM users
WHERE user_id IN (
        SELECT id FROM Person WHERE location = "Kandal"

    );


-- Subquery part2

SELECT name FROM student
WHERE course_name IN (
        SELECT id FROM users WHERE email = "Samsophal04@gmail.com"

    );

CREATE TABLE Computer(
    id INT,
    name VARCHAR(255),
    address VARCHAR(255),
);

USE Computer;
SELECT * FROM Computer
WHERE address IN ('Kandal','Phnom Penh','siem reap');

-- short hand
SELECT * FROM Computer
WHERE name IN name = 'laptop'
    OR name = 'PC'
    OR name = 'Desktop';


SELECT * FROM student
WHERE city NOT IN ('Kandal','siem reap');


SELECT * FROM student
WHERE name IN ('battambang','takeo');


    -- Clade LIKE
-- SELECT Column_name(s)
-- FROM table_name
-- WHERE column_name LIKE pattern;


    --ស្វែងរកឈ្មោះផ្តើមដោយអក្សរ សុ
SELECT * FROM student
WHERE name LIKE 'សុ%';

    -- ស្វែងរកឈ្មោះបញ្ចប់ដោយអរក្សរ ផល
SELECT * FROM student
WHERE name LIKE '%ផល';

SELECT * FROM student
WHERE name LIKE '%ខ្ញុំ%';


SELECT * FROM student
WHERE name LIKE 'A____';





