CREATE TABLE orders
(
    id           serial PRIMARY KEY,
    date         date    NOT NULL,
    customer_id  int     NOT NULL UNIQUE,
    product_name varchar NOT NULL,
    amount       int     NOT NULL
);

SELECT *
FROM orders;

