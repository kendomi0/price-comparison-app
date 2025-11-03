-- Create items table
CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    size VARCHAR(50) NOT NULL,
    is_organic BOOLEAN NOT NULL DEFAULT FALSE,
    is_store_brand BOOLEAN NOT NULL DEFAULT FALSE,
    store_name VARCHAR(255) NOT NULL,
    size_value DECIMAL(10,2),
    unit VARCHAR(20),
    unit_price DECIMAL(10,2)
);

-- Insert values into table
INSERT INTO items (name, category, brand, price, size, is_organic, is_store_brand, store_name, size_value, unit)
VALUES
    ('Smooth Almond Butter', 'Almond Butter', 'Barney Butter', 13.99, '16 oz', FALSE, FALSE, 'ShopRite', 16, 'oz'),					
    ('Creamy Almond Butter', 'Almond Butter', 'Bowl & Basket', 8.49, '16 oz', FALSE, TRUE, 'ShopRite', 16, 'oz'),					
    ('Crunchy Almond Butter', 'Almond Butter', 'MaraNatha', 7.99, '12 oz', FALSE, FALSE, 'ShopRite', 12, 'oz'),					
    ('White Eggs', 'Eggs', 'Bowl & Basket', 3.69, '18 count', FALSE, TRUE, 'ShopRite', 18, 'egg'),					
    ('Brown eggs', 'Eggs', 'Wholesome Pantry', 9.69, '18 count', TRUE, TRUE, 'ShopRite', 18, 'egg'),					
    ('Shredded Mexican blend cheese', 'Cheese', 'Bowl & Basket', 1.99, '8 oz', FALSE, TRUE, 'ShopRite', 8, 'oz'),					
    ('Shredded Mexican blend cheese', 'Cheese', 'Wholesome Pantry', 3.99, '6 oz', TRUE, TRUE, 'ShopRite', 6, 'oz'),					
    ('Shredded Mexican blend cheese', 'Cheese', 'Kraft', 3.79, '8 oz', FALSE, FALSE, 'ShopRite', 8, 'oz'),					
    ('Whole milk', 'Milk', 'Bowl & Basket', 2.59, '0.5 gallon', FALSE, TRUE, 'ShopRite', 0.5, 'gallon'),					
    ('Whole milk', 'Milk', 'Wholesome Pantry', 4.99, '0.5 gallon', TRUE, TRUE, 'ShopRite', 0.5, 'gallon'),					
    ('Lactose-free whole milk', 'Milk', 'Bowl & Basket', 3.99, '0.5 gallon', FALSE, TRUE, 'ShopRite', 0.5, 'gallon'),					
    ('Lowfat plain greek yogurt', 'Yogurt', 'Chobani', 6.99, '32 oz', FALSE, FALSE, 'ShopRite', 32, 'oz'),					
    ('Whole milk plain greek yogurt', 'Yogurt', 'Cabot', 5.19, '32 oz', FALSE, FALSE, 'ShopRite', 32, 'oz'),					
    ('Nonfat plain greek yogurt', 'Yogurt', 'Fage', 6.99, '32 oz', FALSE, FALSE, 'ShopRite', 32, 'oz'),					
    ('93% lean ground beef', 'Meat', 'Nature''s Reserve', 7.99, '16 oz', FALSE, FALSE, 'ShopRite', 16, 'oz'),					
    ('93% lean ground beef', 'Meat', 'ShopRite', 9.74, '20.8 oz', FALSE, TRUE, 'ShopRite', 20.8, 'oz'),					
    ('Wagyu ground beef', 'Meat', 'Tajima', 8.99, '16 oz', FALSE, FALSE, 'ShopRite', 16, 'oz'),					
    ('Creamy Almond Butter', 'Almond Butter', 'Simply Nature', 3.55, '12 oz', FALSE, TRUE, 'Aldi', 12, 'oz'),					
    ('93% lean ground beef', 'Meat', 'Aldi', 7.29, '16 oz', FALSE, TRUE, 'Aldi', 16, 'oz'),					
    ('93% lean grass fed ground beef', 'Meat', 'Simply Nature', 8.25, '16 oz', TRUE, TRUE, 'Aldi', 16, 'oz'),					
    ('Nonfat plain greek yogurt', 'Yogurt', 'Friendly Farms', 3.55, '32 oz', FALSE, TRUE, 'Aldi', 32, 'oz'),					
    ('Brown eggs', 'Eggs', 'Simply Nature', 5.35, '12 eggs', TRUE, TRUE, 'Aldi', 12, 'egg'),					
    ('Large white eggs', 'Eggs', 'Goldhen', 2.59, '12 eggs', FALSE, TRUE, 'Aldi', 12, 'egg'),					
    ('Shredded Mexican blend cheese', 'Cheese', 'Simply Nature', 3.09, '6 oz', TRUE, TRUE, 'Aldi', 6, 'oz'),					
    ('Whole milk', 'Milk', 'Friendly Farms', 1.49, '0.5 gallon', FALSE, TRUE, 'Aldi', 0.5, 'gallon'),					
    ('Brown eggs', 'Eggs', 'Trader Joe''s', 4.99, '12 eggs', TRUE, TRUE, 'Trader Joe''s', 12, 'egg'),					
    ('Unsalted creamy almond butter', 'Almond Butter', 'Trader Joe''s', 6.49, '16 oz', FALSE, TRUE, 'Trader Joe''s', 16, 'oz'),					
    ('Nonfat plain greek yogurt', 'Yogurt', 'Trader Joe''s', 5.49, '32 oz', FALSE, TRUE, 'Trader Joe''s', 32, 'oz'),					
    ('Shredded Mexican blend cheese', 'Cheese', 'Trader Joe''s', 3.99, '12 oz', FALSE, TRUE, 'Trader Joe''s', 12, 'oz'),					
    ('96% lean ground beef', 'Meat', 'Trader Joe''s', 8.99, '16 oz', FALSE, TRUE, 'Trader Joe''s', 16, 'oz');		

-- Set unit_price
UPDATE items
SET unit_price = ROUND(price / size_value, 2);

-- View results
SELECT * FROM items;