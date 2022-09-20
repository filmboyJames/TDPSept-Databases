CREATE DATABASE qa_restaurant; #statement to create a database if it doesn't exist already

USE qa_restaurant; #Need this statement to point to the database we will be interacting with e.g. creating tables in, adding records to, etc

#(CREATE) Statement to create a table that doesn't exist already, follows the format below
#
CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY (cust_id));

SHOW TABLES; #Display all the tables in the database you're in (READ - DDL)

DESCRIBE customers; #Display details of the tables

DROP TABLE customers; #To delete a table (DELETE - DDL)
DROP DATABASE qa_restaurant; #To delete a database (DELETE - DDL)
