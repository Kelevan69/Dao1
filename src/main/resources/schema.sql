CREATE TABLE CUSTOMERS (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(50) NOT NULL,
                           surname VARCHAR(50) NOT NULL,
                           age INT NOT NULL,
                           phone_number VARCHAR(15) NOT NULL
);

CREATE TABLE ORDERS (
                        id SERIAL PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id INT NOT NULL,
                        product_name VARCHAR(100) NOT NULL,
                        amount INT NOT NULL,
                        CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id) ON DELETE CASCADE
);
