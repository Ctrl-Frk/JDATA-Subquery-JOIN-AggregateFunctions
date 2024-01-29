SELECT c.name, c.surname, c.age, o.product_name, o.amount
FROM customers c
         JOIN orders o ON c.id = o.customer_id
WHERE lower(name) = 'alexey';

