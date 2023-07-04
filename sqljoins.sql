-- Creating the SampleDB database
CREATE DATABASE SampleDB;
USE SampleDB;

-- Creating the Customers table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  ContactNumber VARCHAR(15)
);

-- Creating the Orders table
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10,2),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Inserting sample data into the Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactNumber)
VALUES
  (1, 'John Doe', '123-456-7890'),
  (2, 'Jane Smith', '987-654-3210'),
  (3, 'Robert Johnson', '555-123-4567');

-- Inserting sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
  (1001, 1, '2023-01-01', 100.00),
  (1002, 2, '2023-02-15', 250.00),
  (1003, 1, '2023-03-05', 75.50);


SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID;


SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers AS c
RIGHT JOIN Orders AS o ON c.CustomerID = o.CustomerID;

SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers AS c
RIGHT JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL;


SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers AS c
CROSS JOIN Orders AS o;
