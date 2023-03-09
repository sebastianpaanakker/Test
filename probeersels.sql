--probeersels


--saldo van bv ING_Sebas met datum doorgeven naar bnkreknr

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    full_name TEXT
);

CREATE TABLE orders (
    order_id SERIAL,
    dish_name TEXT,
    customer_id INTEGER REFERENCES customers (id)
);






ALTER TABLE orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers (id);




truncate table boekhouding_sebas.boekjaar_2023.berliner_2023;