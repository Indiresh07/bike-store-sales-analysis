--- this query is used to find top 5 customers purchasing products with their customer_id , name , total_orders , recent purchase date 
--- by removing the limit clause in the last line ; it results everyone 

USE my_dataset ;
SELECT c.customer_id , CONCAT(c.first_name ,'', c.last_name)  AS full_name , COUNT(o.order_id) AS total_orders
	, MAX(o.order_date) AS last_purchase_date 
FROM orders AS o
INNER JOIN customers AS C 
ON o.customer_id = c.customer_id 
GROUP BY c.customer_id , c.first_name , c.last_name 
ORDER BY total_orders DESC , last_purchase_date DESC 
LIMIT 5 ;
