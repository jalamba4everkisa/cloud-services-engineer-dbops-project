ALTER TABLE product 
    ADD COLUMN price DOUBLE PRECISION,
    ADD PRIMARY KEY (id);

ALTER TABLE orders
    ADD COLUMN date_created DATE,
    ADD PRIMARY KEY (id);

DROP TABLE IF EXISTS product_info;
DROP TABLE IF EXISTS orders_date;

ALTER TABLE order_product
    ADD CONSTRAINT fk_order_product_product 
        FOREIGN KEY (product_id) REFERENCES product(id),
    ADD CONSTRAINT fk_order_product_orders
        FOREIGN KEY (order_id) REFERENCES orders(id);
