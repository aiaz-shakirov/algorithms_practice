-- Покупатели из Москвы
SELECT name, city
FROM customers
WHERE city = 'Москва';

-- Имя покупателя и дата заказа
SELECT customers.name, orders.order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

-- Количество заказов у каждого покупателя (без учёта, у кого 0 заказов)
SELECT customers.name, COUNT(*)
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name;

-- Количество заказов у каждого покупателя, включая тех, у кого 0 заказов
SELECT customers.name, COUNT(orders.order_id)
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name;

-- Покупатели, сделавшие больше одного заказа
SELECT customers.name, COUNT(orders.order_id)
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING COUNT(orders.order_id) > 1;