-- 9-cities_by_state_join.sql
-- List all cities with their corresponding states using a JOIN

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- List cities with states using a JOIN
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;

