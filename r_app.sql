    -- VIEW IN PROGRAMING SQL

-- syntax
    --  CREATE VIEW view_name AS
    --  SELECT column1, column2
    --  FROM table_name
    --  WHERE condition;




CREATE TABLE student(
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(255),
        gender VARCHAR(255),
        age INT,
        class VARCHAR(200),
        score INT,
);


INSERT INTO students (name, gender, age, class, score)
VALUES
('Sophal', 'Male', 20, 'A', 85),
('Dara', 'Male', 21, 'B', 72),
('Sokha', 'Female', 20, 'A', 91),
('Rina', 'Female', 22, 'C', 65);


    -- Creating view to finding student having score >=80
CREATE VIEW high_score_student AS 
SELECT id,name,class,score
FROM students
WHERE score >=80;

SELECT * FROM high_score_student;




    ---------------------------------------
    ---------------------------------------




    -- VIEWS WITH JOIN
CREATE VIEW student_class_view AS
SELECT s.id,s.name,c.class_name
FROM students s
JOIN class c ON s.class_id = c.id;


SELECT * FROM student_class_view;






