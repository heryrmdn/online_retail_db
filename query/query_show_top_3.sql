SELECT products.name, quantity FROM orders
JOIN products ON (products.id = orders.product_id)
ORDER BY quantity DESC
LIMIT 3;