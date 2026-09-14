    -- Window Function
-- Syntax
-- function_name() over (
    -- PARTITION By Column
    -- ORDER BY column
-- )


SELECT name, salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num

FROM employees;



SELECT name, salary 
    ROW_NUMBER() OVER ( ORDER BY salary DESC) AS row_num

FROM departments;



    -- using to PARTITION By
SELECT department, name, salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_number

FROM employees;



        ----------------------------------
        ----------------------------------
    -- RANK()
SELECT name, salary,
        RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank

FROM employees;


SELECT id,name,address,
        ROW_NUMBER() OVER (
            ORDER BY address DESC
        ) AS row_number
    FROM departments;


SELECT id,name,address
    RANK() OVER (
        ORDER BY address ASC
    ) AS id_rank


FROM departments;



    ----------------------------------------
    ----------------------------------------

-- DENSE RANK()
SELECT name,salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank

    FROM employees;


SELECT dept_name, dept_salary,
        DENSE_RANK() OVER (
            ORDER BY dept_salary DESC
        )

    FROM departments;



SELECT name, salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    )AS ranking

FROM employees;





    --------------------------------------------------
    --------------------------------------------------
-- LAG()
SELECT sale_date, amount, AVG(amount) ORDER (
    ORDER BY sale_date

    ) AS previous_amount

    FROM sale;
    

















































