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

