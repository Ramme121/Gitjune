Create Database Nestle;

use Nestle;

USE Nestle;


CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
);


CREATE TABLE Sales (
    sales_id INT PRIMARY KEY,
    product_id INT,
    order_id INT,
    sale_date DATE,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products (product_id),
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(100)
);


ALTER TABLE Orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)


INSERT INTO Products (product_id, product_name, category, price)
VALUES (1, 'Product 1', 'Category A', 10.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (2, 'Product 2', 'Category B', 15.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (3, 'Product 3', 'Category A', 12.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (4, 'Product 4', 'Category C', 9.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (5, 'Product 5', 'Category A', 8.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (6, 'Product 6', 'Category B', 14.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (7, 'Product 7', 'Category C', 11.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (8, 'Product 8', 'Category A', 7.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (9, 'Product 9', 'Category B', 13.99);

INSERT INTO Products (product_id, product_name, category, price)
VALUES (10, 'Product 10', 'Category C', 10.99);


INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Ram', 'ram@example.com', '123 Main St');

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (2, 'Ganesh', 'ganesh@example.com', '456 Elm St');

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (3, 'Sita', 'sita@example.com', '789 Oak St');


INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (1, 1, '2023-07-01');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (2, 2, '2023-07-02');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (3, 3, '2023-07-03');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (4, 1, '2023-07-04');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (5, 2, '2023-07-05');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (6, 3, '2023-07-06');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (7, 1, '2023-07-07');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (8, 2, '2023-07-08');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (9, 3, '2023-07-09');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES (10, 1, '2023-07-10');


INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (1, 1, 1, '2023-07-01', 2, 19.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (2, 2, 2, '2023-07-02', 3, 29.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (3, 3, 3, '2023-07-03', 1, 12.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (4, 4, 4, '2023-07-04', 4, 39.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (5, 5, 5, '2023-07-05', 2, 17.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (6, 6, 6, '2023-07-06', 3, 44.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (7, 7, 7, '2023-07-07', 1, 11.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (8, 8, 8, '2023-07-08', 2, 23.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (9, 9, 9, '2023-07-09', 1, 13.99);

INSERT INTO Sales (sales_id, product_id, order_id, sale_date, quantity, price)
VALUES (10, 10, 10, '2023-07-10', 3, 35.99);


SELECT Sales.sales_id, Customers.customer_name, Products.product_name, Orders.order_date, Sales.quantity, Sales.price
FROM Sales
INNER JOIN Products ON Sales.product_id = Products.product_id
INNER JOIN Orders ON Sales.order_id = Orders.order_id
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id;


SELECT Sales.sales_id, Customers.customer_name, Products.product_name, Orders.order_date, Sales.quantity, Sales.price
FROM Sales
LEFT JOIN Products ON Sales.product_id = Products.product_id
LEFT JOIN Orders ON Sales.order_id = Orders.order_id
LEFT JOIN Customers ON Orders.customer_id = Customers.customer_id;

SELECT Sales.sales_id, Customers.customer_name, Products.product_name, Orders.order_date, Sales.quantity, Sales.price
FROM Sales
RIGHT JOIN Products ON Sales.product_id = Products.product_id
RIGHT JOIN Orders ON Sales.order_id = Orders.order_id
RIGHT JOIN Customers ON Orders.customer_id = Customers.customer_id;


SELECT Sales.sales_id, Customers.customer_name, Products.product_name, Orders.order_date, Sales.quantity, Sales.price
FROM Sales
LEFT JOIN Products ON Sales.product_id = Products.product_id
LEFT JOIN Orders ON Sales.order_id = Orders.order_id
LEFT JOIN Customers ON Orders.customer_id = Customers.customer_id

UNION

SELECT Sales.sales_id, Customers.customer_name, Products.product_name, Orders.order_date, Sales.quantity, Sales.price
FROM Sales
RIGHT JOIN Products ON Sales.product_id = Products.product_id
RIGHT JOIN Orders ON Sales.order_id = Orders.order_id
RIGHT JOIN Customers ON Orders.customer_id = Customers.customer_id;


SELECT
    product_name,
    (
        SELECT SUM(quantity)
        FROM Sales
        WHERE Sales.product_id = Products.product_id
    ) AS total_quantity,
    (
        SELECT SUM(quantity * price)
        FROM Sales
        WHERE Sales.product_id = Products.product_id
    ) AS total_revenue
FROM Products;


SELECT DISTINCT customer_name
FROM Customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM Orders
);

SELECT AVG(price) AS average_price
FROM Products;


SELECT MAX(price) AS max_price
FROM Products;

SELECT MIN(price) AS min_price
FROM Products;

SELECT SUM(quantity * price) AS total_revenue
FROM Sales;

SELECT COUNT(*) AS order_count
FROM Orders;

SELECT product_name, price, RANK() OVER (ORDER BY price) AS price_rank
FROM Products;

SELECT product_name, price, dense_rank
FROM (
  SELECT product_name, price, DENSE_RANK() OVER (ORDER BY price) AS dense_rank
  FROM Products
) AS rankings;


SELECT 
  product_name, 
  price, 
  (SELECT COUNT(DISTINCT p2.price) 
   FROM Products p2 
   WHERE p2.price <= p1.price) AS dense_rank
FROM Products p1;

SELECT 
  product_name, 
  price, 
  (SELECT COUNT(DISTINCT p2.price) 
   FROM Products p2 
   WHERE p2.price <= p1.price) AS rank_value
FROM Products p1
LIMIT 0, 1000;


SELECT sales_id, product_id, order_id, ROW_NUMBER() OVER (ORDER BY sales_id) AS row_number
FROM Sales;

SELECT 
  sales_id, 
  product_id, 
  order_id, 
  (@row_number := @row_number + 1) AS row_number
FROM Sales, (SELECT @row_number := 0) AS r
ORDER BY sales_id;

SELECT product_name, price, PERCENT_RANK() OVER (ORDER BY price) AS percent_rank
FROM Products;





