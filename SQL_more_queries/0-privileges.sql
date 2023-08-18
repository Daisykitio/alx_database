SELECT IFNULL(
    CONCAT('User exists: ', user),
    CONCAT('Creating user: ', 'Daisykitio')
) AS msg FROM mysql.user WHERE user = 'Daisykitio';

-- Only create the user if it doesn't exist
CREATE USER IF NOT EXISTS 'Daisykitio'@'localhost';

