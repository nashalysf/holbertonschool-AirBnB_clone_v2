-- setting the MySQL test server for AirBnB project
DROP DATABASE IF EXISTS hbnb_test_db;
-- creating db
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- creating user
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost';

-- setting password
SET PASSWORD FOR 'hbnb_test'@'localhost' = 'hbnb_test_pwd';

-- granting user usage to all db & tables
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';

-- granting user all privileges on hbnb test db
GRANT ALL PRIVILEGES ON 'hbnb_test_db'.* TO 'hbnb_test'@'localhost';

-- granting view privileges on performance db
GRANT SELECT ON 'performance_schema'.* TO 'hbnb_test'@'localhost';

-- applies permission's update without restarting server
FLUSH PRIVILEGES;