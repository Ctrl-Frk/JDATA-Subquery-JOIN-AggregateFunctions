CREATE TABLE orders
(
    id           serial PRIMARY KEY,
    date         date    NOT NULL,
    customer_id  int     NOT NULL UNIQUE,
    product_name varchar NOT NULL,
    amount       int     NOT NULL
);

ALTER TABLE orders
    ADD CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
            REFERENCES customers (id);

SELECT *
FROM orders;

