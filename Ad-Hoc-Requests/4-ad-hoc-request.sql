-- 4. Which segment had the most increase in unique products in 2021 vs 2020?
-- The final output contains these fields: 
-- segment, product_count_2020, product_count_2021, difference.

WITH product_20 AS (SELECT p.segment, 
                           COUNT(DISTINCT s.product_code) AS product_count_2020
                    FROM fact_sales_monthly s
                    JOIN dim_product p 
                    ON s.product_code = p.product_code
                    WHERE s.fiscal_year = 2020
                    GROUP BY p.segment),

product_21 AS (SELECT p.segment,
                      COUNT(DISTINCT s.product_code) AS product_count_2021
               FROM fact_sales_monthly s
               JOIN dim_product p 
               ON s.product_code = p.product_code
               WHERE s.fiscal_year = 2021
               GROUP BY p.segment)

SELECT p20.segment,
       product_count_2020, 
       product_count_2021,
       product_count_2021 - product_count_2020 AS difference 
FROM product_20 p20 
JOIN product_21 p21 
ON p20.segment = p21.segment
ORDER BY difference DESC;
