--- DISPLAY THE TOTAL QUANTITY OF PRODUCTS SOLD PER BRAND

USE my_dataset ;
SELECT b.brand_id , b.brand_name , COUNT(o.quantity) AS total_sales
FROM brands AS b
INNER JOIN products AS p
ON b.brand_id = p.brand_id 
INNER JOIN order_items AS o
ON p.product_id = o.product_id
INNER JOIN orders AS oi
ON o.order_id = oi.order_id
GROUP BY b.brand_id , b.brand_name 
ORDER BY total_sales DESC  ;
