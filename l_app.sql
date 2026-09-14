    --- Multiple CTE
-- Syntax
-- WITH cte1 AS (
   -- SELECT column1, column2
    --FROM table1
  --  WHERE condition1
--  ),

--  cte2 AS (
    --  SELECT column1, SUM(column3) AS total
    --  FROM table2
   -- GROUP BY column1

--  ),


-- cte3 AS (
   -- SELECT c1.column1, c1.column2, c2.total
    -- FROM cte1 c1
    -- JOIN cte2 c2 ON c1.column1 = c2.column1

-- )

-- SELECT * FROM cte3
-- WHERE total > 100;



WITH region_sale AS (
    SELECT region, SUM(sale_amount) AS total_sale
    FROM sale
    GROUP BY region

),

avg_sale AS (
    SELECT AVG(total_sale) AS avg_total
    FROM region_sale
)

SELECT rs.region, rs.total_sale
FROM region_sale rs, avg_sale a
WHERE rs.total_sale > a.avg_total;



