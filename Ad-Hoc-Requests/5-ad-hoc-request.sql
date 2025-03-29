-- 5. Get the products that have the highest and lowest manufacturing costs.
-- The final output should contain these fields: 
-- product_code, product, manufacturing_cost.

SELECT f.product_code, 
       p.product, 
       f.manufacturing_cost AS manufacturing_cost
FROM fact_manufacturing_cost f
JOIN dim_product p 
ON f.product_code = p.product_code
WHERE f.manufacturing_cost = (SELECT MIN(manufacturing_cost) 
                              FROM fact_manufacturing_cost)

UNION ALL

SELECT f.product_code, 
       p.product, 
       f.manufacturing_cost AS manufacturing_cost
FROM fact_manufacturing_cost f
JOIN dim_product p 
ON f.product_code = p.product_code
WHERE f.manufacturing_cost = (SELECT MAX(manufacturing_cost)
                              FROM fact_manufacturing_cost);
