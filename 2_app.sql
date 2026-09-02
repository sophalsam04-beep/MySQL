-- 1- Create New table --
SELECT TABLE Students (
        StudentID int,
        FirstName varchar(255),
        LastName varchar(255),


    );


-- 2- ALTER For updating column adding column email
ALTER TABLE Students ADD Email varchar(255);
ALTER TABLE Students ADD Phone int

-- 3 - DROP For Delete Table all
DROP TABLE Students;


// =============================================
// =============================================

-- Create New database and table name
SELECT TABLE Employee(
    EmpID int,
    EmpName varchar(255),
    EmpAddress varchar(255),

    );

-- Add -> ALTER
ALTER TABLE Employee ADD address varchar(255);
ALTER TABLE Employee ADD gps varchar(255);
ALTER TABLE Employee ADD (home varchar(255));


-- RENAME using to ALTER
ALTER TABLE Employee RENAME home TO https;
ALTER TABLE Employee RENAME gps TO age;


-- DROP using to ALTER
ALTER TABLE Employee DROP (age);
ALTER TABLE Students DROP (FirstName);
ALTER TABLE Students DROP (LastName);


-- MySQL
CREATE  TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL ,
    email varchar(255) UNIQUE ,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

USE users;


-- using to DROP / ALTER
ALTER TABLE users ADD age INT
ALTER TABLE users ADD email INT
DROP TABLE users;


-- =================================
-- DML -> Data manipulation Language
-- =================================
        -- CRUD
    -- 1. INSERT
INSERT INTO users (Address, Village) VALUES (value1, value2);
INSERT INTO users (ID, Name, Age, salary) VALUES (101,"dara",24,500);


    -- 2. SELECT
SELECT Name,email FROM users WHERE users.age>40;

    -- 3. UPDATE
UPDATE table_name SET column1 =  value1 WHERE Condition;
UPDATE users SET salary = 600 WHERE Name = "sokha";
UPDATE users SET salary = 500 WHERE name = "person A";


-- DELETE
DELETE FROM table_name WHERE Condition;
DELETE FROM users WHERE id = 1;


-- METHOD MySQL
-- 1- ORDER BY
SELECT column1, column2 FROM table_name ORDER BY column_name ASC|DESC;
SELECT name,salary FROM users ORDER BY salary DESC;
SELECT name, salary FROM users ORDER BY salary ASC;
SELECT name. address FROM users ORDER BY score DESC;


-- LIMIT
-- Syntax
-- SELECT column1,column2
-- FROM table_name
-- LIMIT number

SELECT column1 FROM table_name LIMIT number;
SELECT name FROM users LIMIT 5;
SELECT * FROM users LIMIT 10;

SELECT * FROM users LIMIT 6;
SELECT * FROM users LIMIT 10,3;
SELECT * FROM users LIMIT 10 OFFSET 20;
SELECT * FROM users LIMIT 20 OFFSET 9;
SELECT * FROM users LIMIT 10,7;


-- LIMIT using with ORDER BY
SELECT name,salary
FROM users
ORDER BY salary DESC
LIMIT 5;

SELECT name, salary
FROM users
ORDER BY salary ASC
LIMIT 3;


-- Panigation
SELECT * FROM products ORDER BY id LIMIT 10 OFFSET 0;
SELECT * FROM products ORDER BY id LIMIT 2 OFFSET 8;
SELECT * FROM products ORDER BY id LIMIT 4 OFFSET 9;


-- WHERE with LIMIT
SELECT name, department, salary
FROM Employee
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 6;

SELECT name, role, salary
FROM Employee
WHERE department = 'Management'
ORDER BY salary ASC
LIMIT 7;


SELECT * FROM products
WHERE price > 100
ORDER BY price ASC
LIMIT 2;


-- LIMIT With Join
SELECT c.name, o.order_date, o.total_amount
FROM order o
JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_date DESC  // filtering big to small
LIMIT 4;








