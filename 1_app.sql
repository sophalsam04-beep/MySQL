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
