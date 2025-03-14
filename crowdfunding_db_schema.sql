CREATE TABLE `contacts` (
  `contact_id` INT PRIMARY KEY,
  `first_name` TEXT,
  `last_name` TEXT,
  `email` TEXT
);

CREATE TABLE `campaign` (
  `campaign_id` INT PRIMARY KEY,
  `contact_id` INT,
  `company_name` TEXT,
  `description` TEXT,
  `goal` FLOAT,
  `pledged` FLOAT,
  `backers_count` INT,
  `country` TEXT,
  `currency` TEXT,
  `launch_date` TIMESTAMP,
  `end_date` TIMESTAMP,
  `category_id` INT,
  `subcategory_id` INT
);

CREATE TABLE `category` (
  `category_id` INT PRIMARY KEY,
  `category` TEXT
);

CREATE TABLE `subcategory` (
  `subcategory_id` INT PRIMARY KEY,
  `subcategory` TEXT
);

ALTER TABLE `contacts` ADD FOREIGN KEY (`first_name`) REFERENCES `campaign` (`company_name`);

ALTER TABLE `category` ADD FOREIGN KEY (`category_id`) REFERENCES `campaign` (`country`);

ALTER TABLE `subcategory` ADD FOREIGN KEY (`subcategory`) REFERENCES `campaign` (`end_date`);
