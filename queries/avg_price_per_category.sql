--- FIND THE AVERAGE LIST PRICE OF PRODUCTS IN EACH CATEGORY

USE my_dataset ;
SELECT  c.category_name , AVG(p.list_price) AS avg_price_in_dollars
FROM categories AS c
INNER JOIN products AS p
ON c.category_id = p.category_id 
GROUP BY c.category_name;
