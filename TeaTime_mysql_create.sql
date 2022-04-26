CREATE TABLE `products` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` VARCHAR(255) NOT NULL,
	`price` DECIMAL NOT NULL,
	`image_url` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `order_products` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`quantity` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `orders` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`user_id` INT NOT NULL,
	`order_date` DATE NOT NULL,
	`status` VARCHAR(255) NOT NULL,
	`credit_card` VARCHAR(255) NOT NULL,
	`shipping_address` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
	`first_name` VARCHAR(255) NOT NULL,
	`last_name` VARCHAR(255) NOT NULL,
	`create_date` DATETIME NOT NULL,
	`address` varchar(50) NOT NULL,
	`city` varchar(50) NOT NULL,
	`state` varchar(50) NOT NULL,
	`zip` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `user_roles` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`role_name` VARCHAR(255) NOT NULL,
	`user_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `order_products` ADD CONSTRAINT `order_products_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`);

ALTER TABLE `order_products` ADD CONSTRAINT `order_products_fk1` FOREIGN KEY (`product_id`) REFERENCES `products`(`id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `user_roles` ADD CONSTRAINT `user_roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);






