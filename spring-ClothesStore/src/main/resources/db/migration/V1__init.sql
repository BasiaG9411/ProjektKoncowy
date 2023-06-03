CREATE TABLE `role`
(
    `id`   bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user`
(
    `id`              bigint NOT NULL AUTO_INCREMENT,
    `city`            varchar(255) DEFAULT NULL,
    `contact`         varchar(255) DEFAULT NULL,
    `country`         varchar(255) DEFAULT NULL,
    `login`           varchar(255) DEFAULT NULL,
    `password`        varchar(255) DEFAULT NULL,
    `postal_code`     varchar(10)  DEFAULT NULL,
    `street`          varchar(255) DEFAULT NULL,
    `user_image_path` varchar(255) DEFAULT NULL,
    `role_id`         bigint       DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY (`role_id`),
    CONSTRAINT FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order`
(
    `id`                 bigint NOT NULL AUTO_INCREMENT,
    `city`               varchar(255)   DEFAULT NULL,
    `country`            varchar(255)   DEFAULT NULL,
    `creation_timestamp` datetime(6) DEFAULT NULL,
    `postal_code`        varchar(255)   DEFAULT NULL,
    `status`             varchar(255)   DEFAULT NULL,
    `street`             varchar(255)   DEFAULT NULL,
    `sum`                decimal(38, 2) DEFAULT NULL,
    `user_id`            bigint         DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY (`user_id`),
    CONSTRAINT FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order_line`
(
    `id`       bigint NOT NULL AUTO_INCREMENT,
    `price`    decimal(38, 2) DEFAULT NULL,
    `quantity` int    NOT NULL,
    `order_id` bigint         DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY (`order_id`),
    CONSTRAINT FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `brand`
(
    `id`   bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category`
(
    `id`   bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product`
(
    `id`            bigint NOT NULL AUTO_INCREMENT,
    `create_date`   datetime(6) DEFAULT NULL,
    `description`   varchar(255)   DEFAULT NULL,
    `logo`          varchar(255)   DEFAULT NULL,
    `price`         decimal(38, 2) DEFAULT NULL,
    `product_name`  varchar(255)   DEFAULT NULL,
    `brand_id`      bigint         DEFAULT NULL,
    `category_id`   bigint         DEFAULT NULL,
    `order_line_id` bigint         DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY (`brand_id`),
    KEY (`category_id`),
    KEY (`order_line_id`),
    CONSTRAINT FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
    CONSTRAINT FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
    CONSTRAINT FOREIGN KEY (`order_line_id`) REFERENCES `order_line` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `order_orderline`
(
    `order_id`     bigint NOT NULL,
    `orderline_id` bigint NOT NULL,
    PRIMARY KEY (`order_id`, `orderline_id`),
    KEY            `order_id` (`order_id`),
    CONSTRAINT `order_orderline_1`
        FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
    CONSTRAINT `order_orderline_2`
        FOREIGN KEY (`orderline_id`) REFERENCES `order_line` (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
