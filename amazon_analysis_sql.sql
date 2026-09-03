SELECT * FROM projects.amazon;

-- for total rows
-- SELECT COUNT(*) AS total_rows FROM amazon;	

-- null count
-- SELECT
--     SUM(product_id IS NULL) AS product_nulls,
--     SUM(category IS NULL) AS category_nulls,
--     SUM(sub_category IS NULL) AS sub_category_nulls,
--     sum(discounted_price is null) as discounted_null,
--     sum(discount_percentage is null) as discount_per_null,
--     sum(rating is null) as rating_null,
--     sum(rating_count is null) as rating_count_null,
--     sum(after_discount is null) as after_dis_null
-- FROM amazon;

-- unique product id
-- select count(distinct product_id) as unique_products from amazon;

-- NEGATIVE SALE CHECK
-- SELECT * FROM amazon WHERE actual_price < 0;
-- SELECT * FROM amazon WHERE discount_percentage < 0;
-- SELECT * FROM amazon WHERE  rating< 0;
-- SELECT * FROM amazon WHERE actual_price < 0;
-- SELECT * FROM amazon WHERE rating_count < 0;
-- SELECT * FROM amazon WHERE After_discount < 0;

-- MORE THEN POSITIVE
-- select * FROM amazon WHERE discount_percentage>0.99;

-- Category Count
-- SELECT category,COUNT(*) AS product_count FROM amazon GROUP BY category ORDER BY product_count DESC;

-- Sub Category Count
-- select sub_category,count(*) as Sub_pro_count from amazon group by sub_category order by Sub_pro_count desc;

-- AVG_DISCOUNT VS RATING
-- select category,avg(discount_percentage) as Avg_discount,avg(rating) as average_rating from amazon group by category order by average_rating,Avg_discount desc;

-- AVERAGE RATNG CATEGORY
-- select category,avg(rating) as avg_rating from amazon group by category order by avg_rating desc;

-- MAX RATING BY CATEGORY
-- select category,max(rating) as max_rating from amazon group by category order by max_rating desc;

-- IS DISCOUNT PRICE > ACTUAL PRICE
-- SELECT *FROM amazon WHERE discounted_price > actual_price;

-- INVALID DISCOUNT VALUES
-- SELECT * FROM amazon WHERE discount_percentage < 0 OR discount_percentage > 100;

-- TOTAL CATEGORIES
-- SELECT COUNT(DISTINCT category) AS total_categories FROM amazon;

-- TOTAL SUB CATEGORY
-- SELECT COUNT(DISTINCT sub_category) AS total_sub_categories FROM amazon;

-- CATEGORY WISE PRODUCT COUNT
-- SELECT category, COUNT(DISTINCT product_id) AS total_products FROM amazon GROUP BY category ORDER BY total_products DESC;

-- SUB CATEGORY WISE PRODUCT COUNT
-- SELECT sub_category, COUNT(DISTINCT product_id) AS total_products FROM amazon GROUP BY sub_category ORDER BY total_products DESC;


-- Overall price statistics
-- SELECT
--     MIN(actual_price) AS min_actual_price,
--     MAX(actual_price) AS max_actual_price,
--     ROUND(AVG(actual_price), 2) AS avg_actual_price,
--     MIN(discounted_price) AS min_discounted_price,
--     MAX(discounted_price) AS max_discounted_price,
--     ROUND(AVG(discounted_price), 2) AS avg_discounted_price
-- FROM amazon;

-- CATEGORY WISE AVG PRICE
-- SELECT
--     category,
--     ROUND(AVG(actual_price), 2) AS avg_actual_price,
--     ROUND(AVG(discounted_price), 2) AS avg_discounted_price
-- FROM amazon
-- GROUP BY category
-- ORDER BY avg_actual_price DESC;


-- MOST EXPENSIVE PRODUCT
-- SELECT sub_category, actual_price, discounted_price, discount_percentage FROM amazon ORDER BY actual_price DESC LIMIT 10;

-- Highest discounted price products
-- SELECT product_id,actual_price,discounted_price,discount_percentage FROM amazon ORDER BY discounted_price DESC LIMIT 10;


-- CATEGORY WISE AVERAGE DISCOUNT
-- SELECT category,ROUND(AVG(discount_percentage), 2) AS avg_discount FROM amazon GROUP BY category ORDER BY avg_discount DESC;


-- SUB CATEGORY WISE AVERAGE DISCOUNT
-- SELECT sub_category,ROUND(AVG(discount_percentage), 2) AS avg_discount FROM amazon GROUP BY sub_category ORDER BY avg_discount DESC;


-- CASE WHEN
-- SELECT
--     CASE
--         WHEN discount_percentage < 20 THEN 'Low Discount'
--         WHEN discount_percentage < 50 THEN 'Medium Discount'
--         ELSE 'High Discount'
--     END AS discount_level,
--     COUNT(*) AS product_count
-- FROM amazon
-- GROUP BY discount_level
-- ORDER BY product_count DESC;


-- CATEGORY WISE CUSTOMER SAVING
-- SELECT category,ROUND(SUM(After_discount), 2) AS total_customer_savings FROM amazon GROUP BY category ORDER BY total_customer_savings DESC;


-- HIGHEST RATED PRODUCT
-- SELECT product_id,rating,rating_count FROM amazon WHERE rating IS NOT NULL ORDER BY rating DESC, rating_count DESC LIMIT 10;


-- Category performance
-- WITH category_analysis AS (SELECT category,
--         COUNT(DISTINCT product_id) AS total_products,
--         ROUND(AVG(rating), 2) AS avg_rating,
--         ROUND(AVG(discount_percentage), 2) AS avg_discount,
--         ROUND(SUM(After_discount), 2) AS total_savings
--     FROM amazon GROUP BY category)
-- SELECT * FROM category_analysis ORDER BY total_savings DESC;


-- Rank categories by average discount
-- SELECT category,ROUND(AVG(discount_percentage), 2) AS avg_discount,RANK() OVER (ORDER BY AVG(discount_percentage) DESC) AS discount_rank FROM amazon GROUP BY category;


-- Category contribution to total savings
-- how much category contribute in total customer savings
-- SELECT category,
--     ROUND(SUM(After_discount), 2) AS category_savings,
--     ROUND(SUM(After_discount) * 100.0 /SUM(SUM(After_discount)) OVER (),2) AS savings_percentage FROM amazon GROUP BY category ORDER BY savings_percentage DESC;


-- High discount + good rating
-- SELECT
--     sub_category,
--     ROUND(AVG(discount_percentage), 2) AS avg_discount,
--     ROUND(AVG(rating), 2) AS avg_rating
-- FROM amazon GROUP BY sub_category HAVING AVG(discount_percentage) >= 0.50 AND AVG(rating) >= 4 ORDER BY avg_discount DESC;


-- Top products based on rating + popularity
-- SELECT product_id,rating,rating_count FROM amazon WHERE rating >= 4 ORDER BY rating_count DESC LIMIT 10;


