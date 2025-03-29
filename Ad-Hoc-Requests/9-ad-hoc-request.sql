-- 9. Which channel helped to bring more gross sales in the fiscal year 2021 
-- and what is the percentage of contribution?
-- The final output contains these fields: 
-- channel, gross_sales_mln, percentage.

WITH channel_gross_sales AS    
                           (SELECT c.channel,
                                   SUM(g.gross_price*f.sold_quantity)/1000000 AS gross_sales_mln
                            FROM fact_sales_monthly f
                            JOIN fact_gross_price g
                            ON f.product_code = g.product_code AND f.fiscal_year = g.fiscal_year
                            JOIN dim_customer c
                            ON f.customer_code = c.customer_code
                            WHERE f.fiscal_year = 2021
                            GROUP BY c.channel)

SELECT *, 
       ROUND(gross_sales_mln*100/SUM(gross_sales_mln) OVER(), 2) AS percentage
FROM channel_gross_sales;
