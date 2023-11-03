SELECT customer_id AS id, customers.name, ROUND(SUM(price)) AS total, ROUND(AVG(price)) AS average FROM orders
JOIN customers ON (customers.id = orders.customer_id)
WHERE MONTH(order_date) = 11
GROUP BY id;