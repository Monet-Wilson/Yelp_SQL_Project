-- 1. View the first 10 rows
SELECT * FROM raw_yelp_data
LIMIT 10;

-- 2. What are the total number of businesses?
SELECT COUNT (*) 
FROM raw_yelp_data;

-- 3. Which state has the most businesses listed in the dataset?
SELECT 	STATE, count(*) AS business_count
FROM raw_yelp_data
GROUP BY state
ORDER BY business_count DESC
LIMIT 1;

-- 4. Which businesses in California got a perfect 5-star rating?
SELECT ORGANIZATION, CITY, RATING
FROM raw_yelp_data
WHERE state = 'CA' AND rating = 5;

-- 5. What are the top 10 most-reviewed California businesses, including their ratings 
-- (sorted by both review count and rating)?
SELECT organization, city, numberreview, rating
FROM raw_yelp_data
WHERE state = 'CA'
ORDER BY numberreview DESC, rating DESC
LIMIT 10;
