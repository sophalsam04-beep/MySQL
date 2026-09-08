    -- TRIGGER IN MYSQL 
-- Syntax
    -- CREATE TRIGGER Trigger_name
    -- {BEFORE | AFTER} {INSERT | UPDATE | DELETE}
    -- ON Table_name For EACH ROW
    -- BEGIN 
        -- SQL CODE
    -- END;
CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200),
    price DECIMAL(10,2),
    stock INT
);


-- CREATE TABLE LOG
CREATE TABLE Product_log(
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    action VARCHAR(100),
    log_time DATETIME


);


    -- CREATE TRIGGER
DELIMITER $$
    CREATE TRIGGER after_product_insert
        AFTER INSERT ON Products
        FOR EACH ROW 
        BEGIN
            INSERT INTO Product_log(product_id, action log_time)
            VALUES (NEW.id, 'INSERT', NOW());


        END $$;

DELIMITER;













