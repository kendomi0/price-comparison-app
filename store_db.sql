CREATE DATABASE storeDB;
USE storeDB;
CREATE TABLE food_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    size VARCHAR(50) NOT NULL,
    is_organic BOOLEAN NOT NULL DEFAULT FALSE
);
ALTER TABLE food_items
ADD COLUMN is_store_brand BOOLEAN NOT NULL DEFAULT FALSE;
ALTER TABLE food_items
ADD COLUMN store_name VARCHAR(255) NOT NULL;
LOAD DATA LOCAL INFILE 'C:\Users\kendr\Desktop\projects\grocery-store-app'
INTO TABLE food_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
INSERT INTO food_items (name, category, brand, price, size, is_organic, is_store_brand, store_name)
VALUES
	('Smooth Almond Butter', 'Almond Butter', 'Barney Butter', 13.99, '16 oz', FALSE, FALSE, 'ShopRite'),					
	('Creamy Almond Butter', 'Almond Butter', 'Bowl & Basket', 8.49, '16 oz', FALSE, TRUE, 'ShopRite'),					
	('Crunchy Almond Butter', 'Almond Butter', 'MaraNatha', 7.9food_items9, '12 oz', FALSE, FALSE, 'ShopRite'),					
	('White Eggs', 'Eggs', 'Bowl & Basket', 3.69, '18 count', FALSE, TRUE, 'ShopRite'),					
	('Brown eggs', 'Eggs', 'Wholesome Pantry', 9.69, '18 count', TRUE, TRUE, 'ShopRite'),					
	('Shredded Mexican blend cheese', 'Cheese', 'Bowl & Basket', 1.99, '8 oz', FALSE, TRUE, 'ShopRite'),					
	('Shredded Mexican blend cheese', 'Cheese', 'Wholesome Pantry', 3.99, '6 oz', TRUE, TRUE, 'ShopRite'),					
	('Shredded Mexican blend cheese', 'Cheese', 'Kraft', 3.79, '8 oz', FALSE, FALSE, 'ShopRite'),					
	('Whole milk', 'Milk', 'Bowl & Basket', 2.59, '0.5 gallon', FALSE, TRUE, 'ShopRite'),					
	('Whole milk', 'Milk', 'Wholesome Pantry', 4.99, '0.5 gallon', TRUE, TRUE, 'ShopRite'),					
	('Lactose-free whole milk', 'Milk', 'Bowl & Basket', 3.99, '0.5 gallon', FALSE, TRUE, 'ShopRite'),					
	('Lowfat plain greek yogurt', 'Yogurt', 'Chobani', 6.99, '32 oz', FALSE, FALSE, 'ShopRite'),					
	('Whole milk plain greek yogurt', 'Yogurt', 'Cabot', 5.19, '32 oz', FALSE, FALSE, 'ShopRite'),					
	('Nonfat plain greek yogurt', 'Yogurt', 'Fage', 6.99, '32 oz', FALSE, FALSE, 'ShopRite'),					
	('93% lean ground beef', 'Meat', 'Nature''s Reserve', 7.99, '16 oz', FALSE, FALSE, 'ShopRite'),					
	('93% lean ground beef', 'Meat', 'ShopRite', 9.74, '1.3 lb', FALSE, TRUE, 'ShopRite'),					
	('Wagyu ground beef', 'Meat', 'Tajima', 8.99, '16 oz', FALSE, FALSE, 'ShopRite'),					
	('Creamy Almond Butter', 'Almond Butter', 'Simply Nature', 3.55, '12 oz', FALSE, TRUE, 'Aldi'),					
	('93% lean ground beef', 'Meat', 'Aldi', 7.29, '16 oz', FALSE, TRUE, 'Aldi'),					
	('93% lean grass fed ground beef', 'Meat', 'Simply Nature', 8.25, '16 oz', TRUE, TRUE, 'Aldi'),					
	('Nonfat plain greek yogurt', 'Yogurt', 'Friendly Farms', 3.55, '32 oz', FALSE, TRUE, 'Aldi'),					
	('Brown eggs', 'Eggs', 'Simply Nature', 5.35, '12 eggs', TRUE, TRUE, 'Aldi'),					
	('Large white eggs', 'Eggs', 'Goldhen', 2.59, '12 eggs', FALSE, TRUE, 'Aldi'),					
	('Shredded Mexican blend cheese', 'Cheese', 'Simply Nature', 3.09, '6 oz', TRUE, TRUE, 'Aldi'),					
	('Whole milk', 'Milk', 'Friendly Farms', 1.49, '0.5 gallon', FALSE, TRUE, 'Aldi'),					
	('Brown eggs', 'Eggs', 'Trader Joe''s', 4.99, '12 eggs', TRUE, TRUE, 'Trader Joe''s'),					
	('Unsalted creamy almond butter', 'Almond Butter', 'Trader Joe''s', 6.49, '16 oz', FALSE, TRUE, 'Trader Joe''s'),					
	('Nonfat plain greek yogurt', 'Yogurt', 'Trader Joe''s', 5.49, '32 oz', FALSE, TRUE, 'Trader Joe''s'),					
	('Shredded Mexican blend cheese', 'Cheese', 'Trader Joe''s', 3.99, '12 oz', FALSE, TRUE, 'Trader Joe''s'),					
	('96% lean ground beef', 'Meat', 'Trader Joe''s', 8.99, '16 oz', FALSE, TRUE, 'Trader Joe''s');					
