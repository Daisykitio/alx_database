-- 2-create_read_user.sql
-- Check if database and user exist, create if not, then grant privileges

-- Check if the database hbtn_0d_2 exists
SELECT IFNULL(
    CONCAT('Database exists: ', SCHEMA_NAME),
    CONCAT('Creating database: ', 'hbtn_0d_2')
) AS msg FROM information_schema.SCHEMATA WHERE SCHEMA_NAME = 'hbtn_0d_2';

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Check if the user user_0d_2 exists
SELECT IFNULL(
    CONCAT('User exists: ', user),
    CONCAT('Creating user: ', 'user_0d_2')
) AS msg FROM mysql.user WHERE user = 'user_0d_2';

-- Create the user if it doesn't exist
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant SELECT privilege on hbtn_0d_2 database
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';

