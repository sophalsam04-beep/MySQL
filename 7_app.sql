    CREATE TABLE Employee(
        id INT
        name VARCHAR(255),
        salary INT,
        age INT,
        address VARCHAR(255),
        birth_date VARCHAR INT,

    );

    CREATE TABLE Student(
        id INT,
        name VARCHAR(255),
    );


    USE Student;
    USE Employee;

        -- SELECT * FROM
    SELECT * FROM Employee
    WHERE salary > 300
    ORDER BY id ASC
    Having salary = 500 AND salary = 300


        -- JOIN
    SELECT id, name
    FROM Employee
    WHERE age >18 OR age <=10
    GROUP BY id DESC;


        -- JOIN 
    SELECT name, salary 
    FROM Employee
    WHERE age >=18
    JOIN salary = 400
    GROUP BY id DESC
    UNION
    SELECT name 
    FROM Student s
    WHERE s.age = s.age
    ORDER BY id DESC;


    -- Create Database
    -- Syntax
        -- CREATE Database Database_name;
CREATE Database shoping;
SHOW Database;  -- MySQL , SQL Server, PostgreSQL, Mongo DB

USE Database;

    -- IF NOT EXISTS
CREATE Database IF NOT EXISTS shoping

    -- CHARACTER SET | COLLATE
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;


    -- PostgreSQL
CREATE Database shoping
WITH OWNER = postgres
ENCODING = 'UTF8';


    -- SQL Coding automatically
    CREATE TABLE 'Student' (
        'id' INT NOT NULL AUTO_INCREMENT,
        'name' VARCHAR(255) NOT NULL,
        'class_id' INT,
        PRIMARY KEY ('id'),
        FOREIGN KEY ('class_id') REFERENCES 'classes'('id')
    );
