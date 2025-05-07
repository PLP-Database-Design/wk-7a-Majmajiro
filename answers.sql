-- Question 1 
-- Creating a 1NF Table
CREATE TABLE ProductDetail_1NF (
OrderID INT,
CustomerName VARCHAR(100),
Product VARCHAR(50)
);

-- Inserting atomic records
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2 
-- Creating a 2NF Table
CREATE TABLE ProductDetail_2NF (
OrderID INT,
CustomerName VARCHAR(100),
Product VARCHAR(50),
PRIMARY KEY (OrderID, Product)
);

-- Inserting records into 2NF table
INSERT INTO ProductDetail_2NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

CREATE TABLE ProductDetail_2NF_Customer (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);

-- Inserting records into Customer table
INSERT INTO ProductDetail_2NF_Customer (CustomerID, CustomerName) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Emily Clark');

