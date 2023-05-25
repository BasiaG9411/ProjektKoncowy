CREATE TABLE Category (
                           id INT,
                           name VARCHAR(16),
                           PRIMARY KEY (id)
);

CREATE TABLE Order (
                            Id INT PRIMARY KEY,
                            client_name VARCHAR(64),
                            client_surname VARCHAR(64),
                            client_email VARCHAR(64),
                            cost DECIMAL(7,2),
                            delivery_address VARCHAR(65),
                            order_date DATE,
                            status VARCHAR(65)
);

CREATE TABLE Brand (
                       id INT PRIMARY KEY,
                       name VARCHAR(16)
);

CREATE TABLE Product (
                         Id INT PRIMARY KEY,
                         product_name VARCHAR(64),
                         description VARCHAR(128),
                         logo VARCHAR(200),
                         price DECIMAL(7,2),
                         brand_id INT,
                         category_id INT,
                         FOREIGN KEY (category_id) REFERENCES Category (id),
                         FOREIGN KEY (brand_id) REFERENCES Brand (id)
);

CREATE TABLE order_line (
                                  order_id INT PRIMARY KEY,
                                  product_id INT,
                                  amount_of_product INT,
                                  FOREIGN KEY (product_id) REFERENCES Product (id),
                                  FOREIGN KEY (order_id) REFERENCES Order (id)
);