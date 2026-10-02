-- Get the most popular product category (by number of items sold).
SELECT 
    c.category_name,
    SUM(oi.quantity) AS total_items_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_items_sold DESC
LIMIT 1;