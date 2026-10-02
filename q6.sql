-- Show how many orders were placed for each product.
SELECT 
    p.product_name,
    COUNT(oi.order_id) AS orders_count
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;
