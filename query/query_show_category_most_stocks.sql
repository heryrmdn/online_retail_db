SELECT category_id AS id, categories.name AS kategori, SUM(stock) as total FROM products
JOIN categories ON (categories.id = products.category_id)
GROUP BY id
ORDER BY total DESC
LIMIT 1;