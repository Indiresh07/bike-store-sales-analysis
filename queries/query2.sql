USE my_dataset ;

SELECT CONCAT(first_name ,'' ,last_name) AS customer_name , state 
FROM customers 
WHERE state = 'CA' ;
