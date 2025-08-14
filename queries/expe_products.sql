USE my_dataset ;

SELECT product_id , product_name , list_price 
FROM products 
ORDER BY list_price DESC
LIMIT 5 ;
