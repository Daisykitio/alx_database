-- 1-create_user.sql
-- Check if user exists, create if not, then grant privileges

-- Check if the user already exists
SELECT IFNULL(
    CONCAT('User exists: ', user),
    CONCAT('Creating user: ', 'user_0d_1')
) AS msg FROM mysql.user WHERE user = 'user_0d_1';

-- Create the user if it doesn't exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

