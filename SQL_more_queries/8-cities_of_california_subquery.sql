-- 8-cities_of_california_subquery.sql
-- List all cities of California without using JOIN

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- List cities of California using a subquery
SELECT id, name
FROM cities
WHERE state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY id ASC;

