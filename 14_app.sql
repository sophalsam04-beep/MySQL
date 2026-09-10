    -- Subquery in MySQL
    -- Syntax
-- SELECT Column_name(s)
-- FROM table_name
-- WHERE Column_name OPERATOR ( SELECT Column_name FROM table_name WHERE condition);

    -- Type of Subquery
        -- 1. Single row subquery
    
SELECT name,salary
FROM employees
    -- using to subquery single row -> ()
WHERE salary > ( SELECT AVG(salary) FROM employees);

SELECT name, age FROM students
WHERE age > ( 
    SELECT age FROM students WHERE age <=18
);


    -- Espisode2
    SELECT first_name, salary FROM employees
    WHERE salary = ( SELECT MIN(salary) FROM employees);



    -- 2. Multiple Row Subquery
SELECT name FROM employees
WHERE department_id IN ( SELECT id FROM department WHERE location = 'Phnom Penh');


    -- Espisode 2
    -- using to IN()
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id FROM department
    WHERE location = "Kandal Provinces"
);


    -- using to ANY()
SELECT first_name,salary FROM employees
WHERE salary > ( SELECT salary FROM employees WHERE department_id = 50
);



    -- using to ALL()
SELECT first_name, salary
FROM employees WHERE salary > ALL (
        SELECT salary FROM employees
        WHERE department_id = 50
);



    -- Corelatte Subquery
SELECT e1.name, e1.department, e1.salary
FROM employees e1
WHERE e1.salary > (
        SELECT AVG(e2.salary) FROM employees e2
        WHERE e2.department = e1.department

);


    -- Fetching Data
SELECT last_name,salary, department_id
FROM employees AS outer WHERE salary(
        SELECT AVG(salary) FROM employees
        WHERE department_id = outer.department_id
);


    -- Using to Corelatte with UPDATE
UPDATE employees
SET salary = ROUND(
        (
            SELECT AVG(salary) FROM employees WHERE department_id = employees.department_id
            ), 2

)


WHERE department_id = 101;


    -- Corelatte Subuery with DELETE
DELETE FROM employees
WHERE employee_id IN (
        SELECT employee_id
        FROM employees
        WHERE department_id = 100;
);


    -- Using to Exist with Corelatte Subquery
SELECT e.employee_id, e.last_name, e.job_id, e.department_id
FROM employees e
WHERE EXISTS(
    SELECT 1
    FROM employees sub
    WHERE sub.manager_id = e.employee_id;
);


--  NOT EXIST With Corelatte Subquery
SELECT d.department_id, d.department_name
FROM department d
WHERE NOT EXISTS(
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id


);


    -- ទីតាំងដែល Subquery អាចប្រើបាន
-- 1 - Where claude
SELECT * FROM Products WHERE price = (
    SELECT MAX(price) FROM Products
);


    -- From Claude (Derive Table)
SELECT dept_name, avg_sal
FROM (SELECT department_id , AVG(salary) AS avg-sal FROM employees GROUP BY department_id ) AS temp
JOIN departments ON temp.department_id = department.id;


    -- SELECT Claude
SELECT name
        (
            SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.id
        ) AS total_orders FROM customer;


        -- EXISTS
SELECT name FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM order o WHERE o.customer_id = c.id;
);


    -- CASE
        -- CASE Using to Create IF/ELSE

SELECT name,salary,
    CASE 
        WHEN salary >=1500 THEN 'High'
        WHEN salary >=1000 THEN 'Medium'
    ELSE 'Low'
        END AS salary_level
FROM employees;



SELECT name, address
    CASE
        WHEN salary >=500 THEN 'Very Goods'
        WHEN salary >=100 THEN 'Goods'
    ELSE 'Low'
        END AS total_salary
FROM departments;


    -- Multiple CASE Conditional
SELECT name,department, salary
    CASE 
        WHEN department = 'IT' AND salary >=1000
            THEN 'Senior IT'
        WHEN department = 'IT' THEN 'Junior IT'
            WHEN salary >=1200
                THEN 'High salary'
                ELSE 'Normal'
                    END AS employee_salary

                FROM employees;




    -- HAVING using to Filter after GROUP BY
SELECT department, COUNT(*) AS total_employees FROM employees
GROUP BY department
        -- Using to HAVING
    HAVING COUNT(*) >=1;




