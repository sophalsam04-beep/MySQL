-- VIEW IN MYSQL
-- Syntax
    -- CREATE VIEW view_name AS
    -- SELECT column1, column2
    -- FROM table_name
    -- WHERE Condition;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    gender VARCHAR(300),
    age INT,
    score DECIMAL(5,2)
);


-- insert into data
INSERT INTO students (name,gender,age,score) VALUES 
('vy','male',18,88),
('rathana','female',22,88),
('mony','male',33,98),
('roth','female',29,86),


    -- VIEW
CREATE VIEW high_score_student AS
SELECT id,name, age, score FROM students
WHERE score >=92;

SELECT * FROM high_score_student;

    -- Update view
CREATE OR REPLACE VIEW high_score_student AS 
SELECT id, name, age, score
FROM students
WHERE score >=84;


    -- Procedure
CALL Procedure_name();

    -- CREATE Procedure 
        -- Procedure with No Parameter
DELIMITER //

    CREATE Procedure get_all_student()
    BEGIN
        SELECT * FROM students;
    END;




DELIMITER;
