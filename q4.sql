-- Which customer spent the most money in total?
SELECT 
    c.full_name,
    SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.full_name
ORDER BY total_spent DESC
LIMIT 1;
