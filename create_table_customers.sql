CREATE TABLE customers
(
    id           serial PRIMARY KEY,
    name         varchar(15) NOT NULL,
    surname      varchar(25) NOT NULL,
    age          int         NOT NULL CHECK (age > 17),
    phone_number varchar(12) NOT NULL
);

ALTER TABLE customers
    ADD CONSTRAINT fk_customers_orders
        FOREIGN KEY (id)
            REFERENCES orders (customer_id);

SELECT *
FROM customers;

DROP TABLE orders;