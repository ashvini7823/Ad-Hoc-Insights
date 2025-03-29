-- 6. Generate a report containing the top 5 customers who received an average high 
-- pre_invoice_discount_pct for the fiscal year 2021 in the Indian market.
-- The final output contains these fields: 
-- customer_code, customer, average_discount_percentage.

SELECT pre.customer_code,
       c.customer,
       ROUND(pre.pre_invoice_discount_pct*100, 2) AS average_discount_percentage
FROM fact_pre_invoice_deductions pre
JOIN dim_customer c
ON pre.customer_code = c.customer_code
WHERE pre.pre_invoice_discount_pct > (SELECT AVG(pre_invoice_discount_pct) 
                                      FROM fact_pre_invoice_deductions) 
      AND
      pre.fiscal_year = 2021 
      AND
      c.market = "India"
ORDER BY average_discount_percentage DESC
LIMIT 5;
