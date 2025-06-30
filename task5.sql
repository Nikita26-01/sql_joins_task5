-- Task 5: SQL Joins (INNER, LEFT, RIGHT, FULL)

-- Step 1: Create Tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Step 2: Insert Data into Tables
INSERT INTO Customers VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Neha', 'Delhi'),
(3, 'Rahul', 'Bangalore'),
(4, 'Priya', 'Chennai');

INSERT INTO Orders VALUES
(101, '2024-06-01', 1, 250.00),
(102, '2024-06-03', 2, 400.50),
(103, '2024-06-05', 1, 180.75),
(104, '2024-06-07', 3, 99.99),
(105, '2024-06-08', NULL, 120.00);

-- Step 3: INNER JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Step 4: LEFT JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Step 5: RIGHT JOIN 
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;

-- Step 6: FULL OUTER JOIN 
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
