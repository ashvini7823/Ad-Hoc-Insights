-- 10. Get the Top 3 products in each division that have a high total_sold_quantity in fiscal year 2021.
-- The final output contains these fields: 
-- division, product_code, product, total_sold_quantity, rank_order.

WITH product_by_sold_quantity AS ( SELECT f.product_code,
                                          SUM(f.sold_quantity) AS total_sold_quantity
                                   FROM fact_sales_monthly f
                                   WHERE fiscal_year = 2021
                                   GROUP BY f.product_code),

ranks AS ( SELECT p.division,
                  q.product_code, 
                  p.product,
                  q.total_sold_quantity,
                  DENSE_RANK() OVER (PARTITION BY p.division ORDER BY total_sold_quantity DESC) AS rank_order
           FROM product_by_sold_quantity q
           JOIN dim_product p
           ON q.product_code = p.product_code)

SELECT * FROM ranks
WHERE rank_order <=3;
