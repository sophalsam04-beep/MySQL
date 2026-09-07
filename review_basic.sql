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
