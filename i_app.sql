    -- ROLLUP AND CUBE
SELECT department, job_title, SUM(salary) AS total_salary
FROM employee
GROUP BY ROLLUP(department,  job_title);


SELECT student_id, course_id, SUM(grade) AS total_grade
FROM student_courses
GROUP BY ROLLUP(student_id, course_id);


SELECT employee_id, department_id, job_title, SUM(salary) AS total_salary
FROM employee
GROUP BY CUBE(department_id, job_title);



CREATE TABLE employees (employee_id, employee_name, department, job_title, salary, gender, hire_date)
CREATE TABLE orders (order_id, customer_id, order_date, total_amount)
CREATE TABLE customers (customer_id, customer_name, city)


