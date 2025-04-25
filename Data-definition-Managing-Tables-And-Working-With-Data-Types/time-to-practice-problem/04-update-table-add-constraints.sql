-- MySQL
-- ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(300) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10, 2) CHECK (price > 0) NOT NULL,
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock INT NOT NULL CHECK (amount_in_stock > 0),
-- MODIFY COLUMN image VARCHAR(300) NOT NULL;

-- PostgreSQL
ALTER TABLE products
ALTER COLUMN product_name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ALTER COLUMN amount_in_stock SET NOT NULL,
ALTER COLUMN image SET NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);