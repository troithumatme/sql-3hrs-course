-- DATABASE OPERATIONS

-- Create database
CREATE DATABASE db1;

-- Delete database
DROP DATABASE db1;

-- Select default schema
USE db1;

-- Set database to read-only
ALTER DATABASE db1 READ ONLY = 1;

-- Set database to read-write
ALTER DATABASE db1 READ ONLY = 0;