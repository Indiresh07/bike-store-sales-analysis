--- IDENTIFY THE CUSTOMERS WHO PLACED MORE THAN 3 ORDERS

USE my_dataset ;
SELECT c.customer_id , c.first_name , COUNT(o.order_id)
FROM customers AS c
INNER JOIN 	orders AS o
ON c.customer_id = o.customer_id 
GROUP BY c.customer_id , c.first_name
HAVING COUNT(o.order_id)> 3;


