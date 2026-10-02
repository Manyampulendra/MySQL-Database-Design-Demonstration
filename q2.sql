-- Which products are currently out of stock?
SELECT 
    product_name, 
    stock_quantity
FROM products
WHERE stock_quantity = 0;
