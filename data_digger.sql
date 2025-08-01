-- Create Database
CREATE DATABASE IF NOT EXISTS DataDigger;
USE DataDigger;

-- 1. Customers Table
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255));

-- Insert sample data into Customers
INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@example.com', 'New York'),
('Bob', 'bob@example.com', 'California'),
('Charlie', 'charlie@example.com', 'Texas'),
('David', 'david@example.com', 'Florida'),
('Eve', 'eve@example.com', 'Nevada');

-- 2. Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));

-- Insert sample orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-07-01', 2000.00),
(2, '2025-07-15', 1500.50),
(3, '2025-07-20', 2200.75),
(4, '2025-07-25', 1800.00),
(1, '2025-07-30', 2500.00);

-- 3. Products Table
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT);

-- Insert sample products
INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 50000.00, 10),
('Mouse', 700.00, 100),
('Keyboard', 1200.00, 80),
('Monitor', 15000.00, 20);

-- 4. OrderDetails Table
CREATE TABLE IF NOT EXISTS OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));

-- Insert valid sample order details (using existing ProductIDs only)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 50000.00),
(1, 2, 2, 1400.00),
(2, 3, 1, 1200.00),
(4, 4, 1, 15000.00);

-- Example Queries

-- Retrieve all customers
SELECT * FROM Customers;

-- Update address of CustomerID 2
UPDATE Customers SET Address = 'Chicago' WHERE CustomerID = 2;

-- Delete CustomerID 5
DELETE FROM Customers WHERE CustomerID = 5;

-- Retrieve customers named 'Alice'
SELECT * FROM Customers WHERE Name = 'Alice';

-- Retrieve orders by CustomerID = 1
SELECT * FROM Orders WHERE CustomerID = 1;

-- Update OrderID 2's amount
UPDATE Orders SET TotalAmount = 2100.00 WHERE OrderID = 2;

-- Delete OrderID 3
DELETE FROM Orders WHERE OrderID = 3;

-- Orders from last 30 days
SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

-- Max, Min, Avg order amount
SELECT MAX(TotalAmount) AS Highest, MIN(TotalAmount) AS Lowest, AVG(TotalAmount) AS Average FROM Orders;

-- Products sorted by price descending
SELECT * FROM Products ORDER BY Price DESC;

-- Update price of ProductID 1
UPDATE Products SET Price = 55000.00 WHERE ProductID = 1;

-- Delete out-of-stock product
DELETE FROM Products WHERE Stock = 0;

-- Products in price range 500 to 2000
SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

-- Most and least expensive product
SELECT MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice FROM Products;

-- Retrieve OrderDetails for OrderID 1
SELECT * FROM OrderDetails WHERE OrderID = 1;

-- Total revenue from orders
SELECT SUM(SubTotal) AS TotalRevenue FROM OrderDetails;

-- Top 3 most ordered products
SELECT ProductID, SUM(Quantity) AS TotalQty
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQty DESC
LIMIT 3;

-- Product sales count
SELECT ProductID, COUNT(*) AS TimesSold
FROM OrderDetails
GROUP BY ProductID;
