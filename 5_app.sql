
  -- Claude LIKE
CREATE TABLE Sale(
        id INT,
        name VARCHAR(255),
        price INT,
);

USE Sale;



SELECT * FROM Sale
WHERE name = "sok%";

SELECT * FROM Sale
WHERE name = "%sok";

SELECT * FROM Sale
WHERE name = "%sok%";

SELECT * FROM Sale
WHERE name = "C____";

    -- NOT LIKE
-- SELECT Column1, Column2
-- FROM table_name
-- WHERE column_name NOT LIKE pattern;
CREATE TABLE Customer(
    id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    category VARCHAR(255),
    sex VARCHAR(255),
    phone INT,
);

USE Customer;
-- មិនចាប់ផ្តើមដោយអក្សរ ដា
SELECT * FROM Customer
WHERE name NOT LIKE "ដា%";

    -- not have gmail in email
SELECT * FROM Customer
WHERE email NOT LIKE '%gmail%';


SELECT name, Customer.category
FROM Customer WHERE email NOT LIKE '%tree%';


    -- not have male in sex
SELECT * FROM Customer
WHERE sex NOT LIKE '%male%';


    -- not end Son
SELECT * FROM Customer
WHERE name NOT LIKE '%Son';


SELECT * FROM Customer
WHERE category NOT LIKE '%ABC%' AND sex = "Male";
SELECT * FROM Customer
WHERE category NOT LIKE '%Angkor Beer%'
AND sex = "Female";


    -- IS NULL
-- not used = Null
-- IS NULL
SELECT * FROM Customer WHERE email IS NULL;
SELECT * FROM Customer WHERE email IS NOT NULL;
SELECT * FROM student WHERE email IS NOT NULL;
SELECT * FROM student WHERE course IS NULL;


SELECT * FROM Customer WHERE phone IS NULL;
UPDATE Customer SET phone = NULL WHERE id = 1;
UPDATE Customer SET phone = NULL WHERE id = 2;
UPDATE student SET age = NULL WHERE id = 202;







