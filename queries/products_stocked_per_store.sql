--- COUNT HOW MANY PRODUCTS STOCKED PER STORE

SELECT st.store_name,
       COUNT(DISTINCT s.product_id) AS total_products_stocked
FROM stocks AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
INNER JOIN products AS p
    ON s.product_id = p.product_id
GROUP BY st.store_name
ORDER BY total_products_stocked DESC;

 
