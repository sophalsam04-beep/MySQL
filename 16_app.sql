    -- Trigger in SQL Server
CREATE TABLE Employee(
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(255),
        salary DECIMAL(10,2)
);


CREATE TABLE Employee_log(
        log_id INT PRIMARY KEY AUTO_INCREMENT,
        emp_id INT,
        action VARCHAR(50),
        log_time DATETIME

);



    -- Using to Trigger in SQL
    DELIMITER //
        CREATE TRIGGER after_employee_insert
            AFTER INSERT ON employees

            FOR EACH ROW
                BEGIN
                    INSERT INTO Employee_log(emp_id, action, log_time) 
                    VALUES (NEW,id,'INSERTED',NOW());

                END //



    DELIMITER;



    -- TRIGGER CHECKIN CONDITION BEFORE UPDATE

DELIMITER //
CREATE TRIGGER before_salary_update
    BEFORE UPDATE ON Employee
        FOR EACH ROW
        BEGIN
            IF NEW.salary < 0 THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'salary cannot smaller than 0';

                
            END IF;

        END //

DELIMITER;



    -- TRIGGER WHEN DELETE DATA
    DELIMITER //

CREATE TRIGGER after_employee_delete
AFTER DELETE ON Employee
FOR EACH ROW
    BEGIN
        INSERT INTO Employee_log(emp_id, action, log_time) VALUES (OLD.id, 'DELETE', NOW());
    END //

DELIMITER;





