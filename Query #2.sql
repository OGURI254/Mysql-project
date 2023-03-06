CREATE TABLE Customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    zip_code CHAR(5) NOT NULL
);
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES 
(1, 'John', 'Doe', 'johndoe@email.com', '555-123-4567', '123 Main St', 'Anytown', 'CA', '12345');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (2, 'Jane', 'Smith', 'janesmith@email.com', NULL, '456 Oak Ave', 'Somewhere', 'NY', '67890');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (3, 'Bob', 'Johnson', 'bjohnson@email.com', '555-987-6543', '789 Elm St', 'Nowhere', 'TX', '54321');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (4, 'Emily', 'Jones', 'emilyjones@email.com', '555-555-5555', '987 6th St', 'Anytown', 'CA', '12345');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (5, 'Mark', 'Garcia', 'markgarcia@email.com', '555-222-3333', '111 Maple St', 'Somewhere', 'NY', '67890');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (6, 'Karen', 'Lee', 'karenlee@email.com', NULL, '333 Pine St', 'Nowhere', 'TX', '54321'); 
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (7, 'David', 'Nguyen', 'davidnguyen@email.com', '555-444-5555', '456 Broadway', 'Anytown', 'CA', '12345');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (8, 'Megan', 'Harris', 'meganharris@email.com', '555-333-2222', '789 Elm St', 'Somewhere', 'NY', '67890');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (9, 'Mike', 'Kim', 'mikekim@email.com', NULL, '12 1st St', 'Nowhere', 'TX', '54321');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (10, 'Sarah', 'Taylor', 'sarahtaylor@email.com', '555-111-2222', '234 Pine St', 'Anytown', 'CA', '12345');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (11, 'Chris', 'Gonzalez', 'chrisgonzalez@email.com', '555-222-4444', '789 Oak St', 'Somewhere', 'NY', '67890');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (12, 'Linda', 'Chen', 'lindachen@email.com', NULL, '678 Maple St', 'Nowhere', 'TX', '54321');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (13, 'Tom', 'Wilson', 'tomwilson@email.com', '555-333-4444', '123 Elm St', 'Anytown', 'CA', '12345');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (14, 'Cynthia', 'Rodriguez', 'cynthiarodriguez@email.com', '555-444-7777', '456 Oak Ave', 'Somewhere', 'NY', '67890');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (15, 'Kevin', 'Lee', 'kevinlee@email.com', NULL, '789 Main St', 'Nowhere', 'TX', '54321');
INSERT INTO Customers (id, first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (16, 'Amanda', 'Brown', 'amandabrown@email.com', '555-777-8888', '111 Pine St', 'Anytown', 'CA', '12345');
    
    
SELECT * FROM customers;
SELECT DISTINCT city FROM Customers;
#DROP TABLE Customers;

SELECT first_name, last_name FROM customers
WHERE city IN ('Somewhere', 'Anytown'); 

SELECT * FROM customers 
WHERE phone IS NULL;
# While using IN, seperate the enclosed values with commas.
# IN can be used instead of ORs.
# Syntax
# SELECT column_name FROM table_name
# WHERE condition IN condition;

# DISTINCT 	is used to remove duplicate rows from a column.
# Syntax
# SELECT DISTINCT column_name FROM table_name;

#AS(alias)-Gives columns temporary names.

SELECT DISTINCT state FROM customers
WHERE state LIKE ('%T_%'); # %,_

# Using COUNT
SELECT COUNT(*) AS Total_No_of_Customers
FROM customers;

SELECT COUNT (DISTINCT state) AS No_of_States 
FROM customers;

SELECT COUNT(phone) AS phone_numbers
FROM customers;

SELECT MIN(zip_code) AS MINI FROM customers;
SELECT MAX(zip_code) AS MAXI FROM customers; 
# Syntax
# SELECT MIN/MAX(column_name) AS alias FROM table_name;

SELECT SUM(zip_code) AS SUMMATION FROM customers;

# AVG, VARIANCE, STDDEV
SELECT AVG(zip_code) AS AVERAGE FROM customers;
SELECT VARIANCE(zip_code) AS VAR FROM customers;
SELECT STDDEV(zip_code) AS STAD FROM customers;

# Grouping of Columns
# ORDER BY, GROUP BY, HAVING



