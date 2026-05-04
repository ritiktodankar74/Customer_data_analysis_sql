-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM `my-2-project-79344.customer_data.customer_address`;

-- 2. Top 5 cities by customer count
SELECT city, COUNT(*) AS total
FROM `my-2-project-79344.customer_data.customer_address`
GROUP BY city
ORDER BY total DESC
LIMIT 5;

-- 3. State-wise customer distribution
SELECT state, COUNT(*) AS total
FROM `my-2-project-79344.customer_data.customer_address`
GROUP BY state
ORDER BY total DESC;

-- 4. Unique cities count
SELECT COUNT(DISTINCT city) AS unique_cities
FROM `my-2-project-79344.customer_data.customer_address`;

-- 5. Country-wise distribution
SELECT country, COUNT(*) AS total
FROM `my-2-project-79344.customer_data.customer_address`
GROUP BY country;

-- 6. Missing data check
SELECT COUNT(*) AS missing_records
FROM `my-2-project-79344.customer_data.customer_address`
WHERE city IS NULL OR state IS NULL;

-- 7. Top 5 states
SELECT state, COUNT(*) AS total
FROM `my-2-project-79344.customer_data.customer_address`
GROUP BY state
ORDER BY total DESC
LIMIT 5;