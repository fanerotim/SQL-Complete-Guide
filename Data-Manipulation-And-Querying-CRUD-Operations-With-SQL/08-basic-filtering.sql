-- Query goals:
-- 1. Find all sales with volume > 1000
-- 2. Find top 10 sales
-- 3. Find bottom 10 sales
-- 4. Find all recurring sales
-- 5. Find disputed sales with volume > 5000
-- 6. Find all sales created between two dates
-- 7. Find all sales fulfilled <= 5 days after creation date
-- 8. Get a list of distinct customers
-- 9. Get a list of distinct products

-- 1
-- SELECT * from sales
-- WHERE volume > 1000;

-- 2
-- SELECT * from sales
-- WHERE id <= 10;

-- Find top 10 sales by volume
-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;

-- 3
-- SELECT * from sales
-- WHERE id >= 3;

-- Find bottom 10 sales by volume
-- SELECT * from sales
-- ORDER BY volume 
-- LIMIT 10;

-- 4
-- SELECT * from sales
-- WHERE is_recurring IS TRUE;

-- 5
-- SELECT * FROM sales
-- WHERE is_disputed IS TRUE AND volume > 5000;

-- 6
-- SELECT * FROM sales
-- WHERE date_created > '2021-01-01' AND date_created < '2021-12-31';
-- WHERE date_created BETWEEN '2021-01-01' AND '2021-12-31' -- Alternative and shorter way of same query

-- 7
-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <= 5;

-- Example that can be used if date was stored as a TIMESTAMP
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;

-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL;

-- 8 
-- SELECT * FROM sales
-- WHERE customer_name = 'Max Schwarz';

-- Get unique entries only
-- SELECT DISTINCT customer_name FROM sales;

-- 9
-- SELECT * FROM sales
-- WHERE product_name = 'book'

-- Get unique / distinct product names
-- SELECT DISTINCT product_name FROM sales;

