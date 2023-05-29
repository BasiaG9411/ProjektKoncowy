CREATE TABLE `role` (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `name` varchar(60) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `city` varchar(60) DEFAULT NULL,
                        `contact` varchar(60) DEFAULT NULL,
                        `country` varchar(60) DEFAULT NULL,
                        `login` varchar(60) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        `postal_code` varchar(10) DEFAULT NULL,
                        `street` varchar(60) DEFAULT NULL,
                        `user_image_path` varchar(255) DEFAULT NULL,
                        `role_id` bigint DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
                        CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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