-- Get total sales amount per product (based on order_items × product price).
SELECT 
    p.product_name,
    SUM(oi.quantity * p.price) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;
