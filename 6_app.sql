
    -- ========================================
    -- ========================================
SELECT * FROM Customer
WHERE name IS NOT NULL;
SELECT * FROM users
WHERE name = NULL;


SELECT student.name, student.course
FROM student s
JOIN student.name ON s.name = user.name
WHERE course = "Software developer" AND course = "IT"
ORDER BY id DESC;



    CREATE TABLE order (
        order_name VARCHAR(255),
        amount INT,
        order_id INT,
        total_spent
    );


USE order;

        -- GROUP BY
        -- input data in the group
SELECT order_name, SUM(amount) AS total FROM order
GROUP BY order_name;
SELECT order_name, COUNT(amount) AS total FROM order
GROUP BY order_name;
SELECT name, Max(age) as total FROM Employee
GROUP BY name;


    -- Having
-- SELECT Column_name, Count(*)
-- FROM table_name
-- GROUP BY column_name
-- HAVING Count(*) > condition;
SELECT order_id, SUM(amount) AS total_spent
FROM order GROUP BY order_id HAVING SUM(amount) > 1000;


    -- WHERE AND HAVING
SELECT order_id, SUM(amount) AS total_spent
FROM order WHERE order_date >= '2026-01-07'
GROUP BY order_id
HAVING SUM(amount) > 1000;


    -- EXIST
    -- making subquery back to 1 row or not
        -- return 1 row if condition is true
        -- return not have 1 row if condition is false
        -- Syntax
-- SELECT Column_name(s)
-- FROM table1
-- WHERE EXISTS(
--    SELECT 1 FROM table2 WHERE conditional
-- );

CREATE TABLE Book(
    book_id INT,
    book_name VARCHAR(255),
);

USE book;

SELECT b.book_name FROM Book b
WHERE EXISTS(
    SELECT 1 FROM student s
    WHERE b.course = s.course;
);

SELECT b.book_name FROM Book b
WHERE NOT EXISTS(
    SELECT 1 FROM student s
    WHERE b.course = s.course;
);


    -- ANY
-- SELECT Column_name(s) FROM table_name
-- WHERE column_name Operator ANY (subquery);
CREATE TABLE products(
    id INT,
    name VARCHAR(255),
    price INT,
    category VARCHAR(255),
);

USE products;

SELECT * FROM products
WHERE price > ANY (
    SELECT price FROM products WHERE category = 'Y';
);

SELECT * FROM products
WHERE price > ANY (
    SELECT price FROM products WHERE category = 'X';
);


    -- ALL
SELECT product.name, products.price
FROM products WHERE price > ALL (
        SELECT price FROM products WHERE category = 'Budget'
    );


    -- UNION Claude
        -- Syntax
-- SELECT Column_name(s) FROM table1
-- UNION
-- SELECT Column_name(s) FROM table2;

SELECT name FROM Sale
UNION
SELECT city FROM Person;


    -- UNION ALL
SELECT name FROM Sale
UNION ALL
SELECT city FROM Person;

SELECT city, customer_name AS name FROM Person
UNION
SELECT city, supplier_name AS name FROM Sale
ORDER BY city;


    -- ALL
SELECT ALL city FROM Person;
