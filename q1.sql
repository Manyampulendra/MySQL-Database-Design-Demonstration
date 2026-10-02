-- List all customers and their order details (order ID, order date, and status).
SELECT 
    c.full_name, 
    o.order_id, 
    o.order_date, 
    o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
