    -- LEFT JOIN IN PROGRAMING SQL

    -- Syntax left join
        -- SELECT columns
        -- FROM table A
        -- LEFT JOIN table B
        -- ON tableA.column = tableB.column;


CREATE DATABASE school;
USE school;

GO


CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(300),
);


CREATE TABLE orders (
    id INT PRIMARY KEY,
    student_id INT,
    product VARCHAR(200),
);



SELECT students.name, orders.product
FROM students
LEFT JOIN orders
    ON students.id = orders.student_id;



    ----------------------------------------
    ----------------------------------------

            -- Full code example using to LEFT JOIN
CREATE TABLE sale (
    id INT PRIMARY KEY,
    name VARCHAR(200),
    amount DECIMAL(10,2),
);

CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(200),
    customer_pay DECIMAL(10,2),

        -- USING TO FOREIGN KEY
        FOREIGN KEY (id) REFERENCES sale(id),
);


INSERT INTO sale (id, name, amount) VALUES 
    (101,'Vicheaka',100.00),
    (102,'chearoth',300.00),
    (103,'nithka',500.00),
    (104,'reaksa',160.00),

INSERT INTO customer (id,name,customer_pay) VALUES
    (101,'sytha',32.44),
    (102,'mony',38.44),
    (103,'roth',44.44),


SELECT sale.name, customer.customer_pay
FROM sale
LEFT JOIN customer
    ON sale.id = customer.id;
WHERE customer.customer_pay IS NULL;


