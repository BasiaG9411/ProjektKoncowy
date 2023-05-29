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

CREATE TABLE `brand` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `create_date` datetime(6) DEFAULT NULL,
                           `description` varchar(255) DEFAULT NULL,
                           `logo` varchar(255) DEFAULT NULL,
                           `price` decimal(38,2) DEFAULT NULL,
                           `product_name` varchar(255) DEFAULT NULL,
                           `brand_id` bigint DEFAULT NULL,
                           `category_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
                           KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
                           CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
                           CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `brand_products` (
                                  `brand_id` bigint NOT NULL,
                                  `products_id` bigint NOT NULL,
                                  UNIQUE KEY `UK_7eaqjxxyd4t68rexhknrw562s` (`products_id`),
                                  KEY `FK7pusas9jj0imb18u29gf2c5dq` (`brand_id`),
                                  CONSTRAINT `FK7pusas9jj0imb18u29gf2c5dq` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
                                  CONSTRAINT `FKc71ff1i8jkjwitpl76isoep5g` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category_products` (
                                     `category_id` bigint NOT NULL,
                                     `products_id` bigint NOT NULL,
                                     UNIQUE KEY `UK_fdnk3mk70n1rc08vw1cj65kqw` (`products_id`),
                                     KEY `FKqwkr0l0xbluhhkm7s0c1tg8en` (`category_id`),
                                     CONSTRAINT `FKe9irm5a62pmolhvr468cip3v3` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
                                     CONSTRAINT `FKqwkr0l0xbluhhkm7s0c1tg8en` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order_line` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `price` decimal(38,2) DEFAULT NULL,
                              `quantity` int NOT NULL,
                              `product_id` bigint DEFAULT NULL,
                              PRIMARY KEY (`id`),
                              KEY `FKpf904tci8garypkvm32cqupye` (`product_id`),
                              CONSTRAINT `FKpf904tci8garypkvm32cqupye` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order` (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `city` varchar(255) DEFAULT NULL,
                          `country` varchar(255) DEFAULT NULL,
                          `creation_timestamp` datetime(6) DEFAULT NULL,
                          `postal_code` varchar(255) DEFAULT NULL,
                          `status` varchar(255) DEFAULT NULL,
                          `street` varchar(255) DEFAULT NULL,
                          `sum` decimal(38,2) DEFAULT NULL,
                          `user_id` bigint DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
                          CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order_order_lines` (
                                      `order_id` bigint NOT NULL,
                                      `order_lines_id` bigint NOT NULL,
                                      KEY `FK4jurtsjio2c3i6bj99ga3kjuc` (`order_lines_id`),
                                      KEY `FKlaecm1pdvqbmsdo18a0kusqg4` (`order_id`),
                                      CONSTRAINT `FK4jurtsjio2c3i6bj99ga3kjuc` FOREIGN KEY (`order_lines_id`) REFERENCES `order_line` (`id`),
                                      CONSTRAINT `FKlaecm1pdvqbmsdo18a0kusqg4` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
