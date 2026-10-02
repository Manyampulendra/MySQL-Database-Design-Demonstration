-- List all orders with their shipping status and delivery address.
SELECT 
    o.order_id, 
    o.order_status, 
    s.shipping_address, 
    s.delivery_status
FROM orders o
JOIN shipping s ON o.order_id = s.order_id;
