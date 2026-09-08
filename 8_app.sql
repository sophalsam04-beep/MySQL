-- ==============================================
--              Advanced MySQL
--===============================================

    -- Primary Key and Foreign Key


-- Primary Key
CREATE TABLE students (
        student_id INT PRIMARY KEY,
        name VARCHAR(100),


);

-- Foreign Key
CREATE TABLE Employee(
        emp_id INT PRIMARY KEY,
        name VARCHAR(200),

);

CREATE TABLE Orders (
        order_id INT PRIMARY KEY,
        student_id INT,
        product_name VARCHAR(255),

            --Using to Foreign key
                FOREIGN KEY (student_id)
                    REFERENCES Employee(emp_id);

    
);


        -- CREATE TABLE AND TABLE_NAME
    CREATE DATABASE school_db;  -- table name of database
    USE school_db;

    -- Parent Table
CREATE TABLE students (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(255),
        email VARCHAR(100),

        
);


    -- Child Table
CREATE TABLE courses (
        course_id INT PRIMARY KEY AUTO_INCREMENT,
        course_name VARCHAR(200) NOT NULL,


);


    -- CREATE TABLE USING TO FK
CREATE TABLE enrollment (
        enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
        student_id INT,
        course_id INT,


            FOREIGN KEY (student_id)    
                REFERENCES students(student_id)


);


        -- INSERT INTO DATA
INSERT INTO students (name , email) VALUES
('sophal','sophalsam04@gmail.com'),
('unvirak','samsophal@gmail.com'),
('vyra','nonyrath@gmail.com'),


    -- Relationship in SQL Server
        -- One to many & Many to many
            -- TABLE CUSTOMERS

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(200) NOT NULL,
    customer_email VARCHAR(300) UNIQUE,


);



    -- TABLE ORDERS
CREATE TABLE orders (
        id INT PRIMARY KEY AUTO_INCREMENT,
        customer_id INT NOT NULL,
        total DECIMAL(10,2),


            FOREIGN KEY (customer_id)
                REFERENCES customers(customer_id)


);

    -- INSERT DATA

INSERT INTO customers (name, id) VALUES
('sophal',101),
('nita',102),
('dara',103),
('rith',104);


    -- JOIN CUSTOMER WITH ORDERS
SELECT customer.id, customer.name, order_id AS order_id, orders.total
FROM customers
JOIN orders ON customer.id = orders.id;



    -- UNIQUE 
    CREATE TABLE users (
            id INT PRIMARY AUTO_INCREMENT,
            username VARCHAR(255) UNIQUE,
            address VARCHAR(100) UNIQUE,
    );

        -- INSERT INTO DATA
INSERT INTO users (id, username, email) VALUES
(1,'SAM',"vfdsf@gmail.com"),
(2,'OUN',"vfsgttg@gmail.com"),
(3,'MOM',"fdsgfsnj@gmail.com");



    -- NOT NULL
CREATE TABLE ams(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
);


    -- CHECK
CREATE TABLE laptop(
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(222),
        age INT CHECK (age >=18)
        salary DECIMAL (10,2) CHECK (salary > 0)
        gender VARCHAR(300) CHECK (gender IN ('Male','Female'))
        score INT CHECK (score >=0 AND score<=100)
        status VARCHAR(300) DEFAULT 'Active'


);

























































































