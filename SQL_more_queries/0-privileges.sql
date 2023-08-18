-- main_2_0.sql
-- Check if user already exists before creating
SELECT IFNULL(
    CONCAT('User exists: ', user),
    CONCAT('Creating user: ', 'user_0d_1')
) AS msg FROM mysql.user WHERE user = 'user_0d_1';

-- Only create the user if it doesn't exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';

