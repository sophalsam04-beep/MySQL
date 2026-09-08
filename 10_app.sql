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


    CALL get_id_student();
DELIMITER //

CREATE Procedure get_id_student();
    BEGIN
        SELECT * FROM Employee;
    END;


DELIMITER;


    -- Store Procedure with IN Parameter
DELIMITER // 

CREATE PROCEDURE get_student_by_gender (
        IN p_gender VARCHAR(10)
)

BEGIN
SELECT * FROM students WHERE gender = p_gender;

END;

DELIMITER;

CALL get_student_by_gender('Female');
CALL get_student_by_gender('Male');


    -- STORE PROCEDURE WITH OUT PARAMETER
DELIMITER //

CREATE PROCEDURE count_student(
    OUT total_students INT
)

BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM students;

END;


DELIMITER;

CALL count_student(@total);


    -- STORE PROCEDURE WITH INOUT
DELIMITER //

CREATE PROCEDURE increase_number(
    INOUT num INT
)

BEGIN
    SET num = num + 20;
END;


DELIMITER;



    -- IF WITH STORE PROCEDURE
DELIMITER //

CREATE PROCEDURE check_score(
    IN p_score INT
)

BEGIN
    IF p_score >=90 THEN 
        SELECT 'Excellent' AS result;

    ELSEIF p_score>=80 THEN
        SELECT 'Very Goods' AS result;
    ELSEIF p_score>=70 THEN
        SELECT 'Good' AS result;

    ELSE 
        SELECT 'Fail' AS result;    



END IF;


DELIMITER;



    -- STORE PROCEDURE WITH UPDATE
DELIMITER //

CREATE PROCEDURE update_student_score(
    IN p_id INT,
    IN p_score DECIMAL(5,2)
)

BEGIN
        -- UPDATE STUDENT BY SCORE
        UPDATE students;
        SELECT score = p_score;
        WHERE id = p_id;

END ;

DELIMITER;
CALL update_student_score(1,95);


    -- STORE PROCEDURE WITH INSERT
DELIMITER //

CREATE PROCEDURE add_student(
    IN p_name VARCHAR(100),
    IN p_gender VARCHAR(100),
    IN p_age INT,
    IN p_score DECIMAL(5,2)
)

BEGIN
    INSERT INTO students(name, gender, age, score) VALUES
    (p_name,p_gender,p_age,p_score)

END;

DELIMITER;


CALL add_student('unvirak','male',22,92);



    -- STORE PROCEDURE WITH DELETE
DELIMITER //
CREATE PROCEDURE delete_student(
    IN p_id INT
)

BEGIN
    DELETE FROM students
    WHERE id = p_id;

END;

DELIMITER;


CALL delete_student(5);







