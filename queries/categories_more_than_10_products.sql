--- FIND CATEGORIES THAT HAVE MORE THAN 10 PRODUCTS LISTED 

USE my_dataset ;
SELECT c.category_id , c.category_name , count(p.product_id) as total_count
FROM categories AS c
INNER JOIN products AS p
ON c.category_id = p.category_id 
group by c.category_id , c.category_name
HAVING (total_count ) > 10 
ORDER BY total_count DESC ;
