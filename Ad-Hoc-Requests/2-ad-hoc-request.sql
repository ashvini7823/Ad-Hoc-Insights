-- 2. What is the percentage of unique product increase in 2021 vs. 2020?
-- The final output contains these fields: 
-- unique_products_2020, unique_products_2021, percentage_chg.

WITH product_20 AS (SELECT COUNT(DISTINCT product_code) AS unique_products_2020
                    FROM fact_sales_monthly
                    WHERE fiscal_year = 2020),

product_21 AS (SELECT COUNT(DISTINCT product_code) AS unique_products_2021
               FROM fact_sales_monthly
               WHERE fiscal_year = 2021)

SELECT unique_products_2020, 
       unique_products_2021,
       ROUND(((unique_products_2021 - unique_products_2020) / unique_products_2020)*100 , 2) AS percentage_chg
FROM product_20, product_21;
