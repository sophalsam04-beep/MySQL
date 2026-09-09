    -- Aggregate Function in SQL Servers
        -- 1. Count()
SELECT COUNT(*) FROM employees;
SELECT COUNT(salary) * FROM employees; -- Cannot count = NULL
SELECT COUNT(DISTINCH department) FROM employees;



        -- 2. SUM()
SELECT SUM(salary) FROM employees;

        -- 3. AVG()
SELECT AVG(salary) FROM employees;

        -- 4. MAX()
SELECT MAX(salary) FROM employees;

        -- 5. MIN()
SELECT MIN(salary) FROM employees;


        -- USING TO Aggregate function with GRUOP BY in Category
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


    -- HAVING
SELECT department, COUNT(*) AS total
FROM employees;
GROUP BY department
HAVING COUNT(*) > 3;


        -- Full code with Aggregate function
SELECT departments,
        COUNT(*) AS total_staff,
        SUM(salary) AS total_salary,
        AVG(salary) AS avg_salary,
        MAX(salary) AS higest_salary,
        MIN(salary) AS lower_salary
FROM employees
WHERE status = 'active'
GROUP BY departments
HAVING AVG(salary)> 300
ORDER BY total_salary DESC;







