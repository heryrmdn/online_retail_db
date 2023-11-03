SELECT customer_id AS id, customers.name, COUNT(product_id) AS total FROM orders
JOIN customers ON (customers.id = orders.customer_id)
GROUP BY id
HAVING total = 3;