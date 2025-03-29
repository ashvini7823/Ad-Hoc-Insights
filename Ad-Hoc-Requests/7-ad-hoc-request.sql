-- 7. Get the complete report of the Gross Sales Amount for the customer "Atliq Exclusive" 
-- for each month. This analysis helps to get an idea of low and high-performing months 
-- and take strategic decisions.
-- The final report contains these columns: Month, Year, Gross Sales Amount.

SELECT monthname(f.date) AS Month,
       f.fiscal_year,
       ROUND(SUM(g.gross_price*f.sold_quantity)/1000000, 2) AS Gross_sales_Amount
FROM fact_gross_price g
JOIN fact_sales_monthly f
ON g.product_code = f.product_code AND g.fiscal_year = f.fiscal_year
JOIN dim_customer c
ON f.customer_code = c.customer_code
WHERE customer = "Atliq Exclusive"
GROUP BY Month, f.date, f.fiscal_year
ORDER BY f.date;
