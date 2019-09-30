```
SELECT * FROM Customers;


SELECT CustomerName,City FROM Customers;

SELECT DISTINCT City FROM Customers;


SELECT * FROM Customers
WHERE Country='Mexico';


SELECT * FROM Customers
WHERE CustomerID=1;


SELECT * FROM Customers
WHERE Country='Germany'
AND City='Berlin';


SELECT * FROM Customers
WHERE City='Berlin'
OR City='München';


SELECT * FROM Customers
WHERE Country='Germany'
AND (City='Berlin' OR City='München');


SELECT * FROM Customers
ORDER BY Country;


SELECT * FROM Customers
ORDER BY Country DESC;


SELECT * FROM Customers
ORDER BY Country,CustomerName;


INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');


INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');


UPDATE Customers
SET ContactName='Alfred Schmidt', City='Hamburg'
WHERE CustomerName='Alfreds Futterkiste';


DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste' AND ContactName='Maria Anders';


SELECT TOP 2 * FROM Customers;


SELECT TOP 50 PERCENT * FROM Customers;


SELECT * FROM Customers
WHERE City LIKE 's%';


SELECT * FROM Customers
WHERE City LIKE '%s';


SELECT * FROM Customers
WHERE Country LIKE '%land%';


SELECT * FROM Customers
WHERE Country NOT LIKE '%land%';


SELECT * FROM Customers
WHERE City LIKE 'ber%';


SELECT * FROM Customers
WHERE City LIKE '%es%';


SELECT * FROM Customers
WHERE City LIKE '_erlin';


SELECT * FROM Customers
WHERE City LIKE 'L_n_on';


SELECT * FROM Customers
WHERE City LIKE '[bsp]%';


SELECT * FROM Customers
WHERE City LIKE '[a-c]%';


SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';


SELECT * FROM Customers
WHERE City IN ('Paris','London');


SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;


SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;


SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1,2,3);


SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'M';


SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'C' AND 'M';


SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#;


SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;


SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS Address
FROM Customers;


SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName="Around the Horn" AND c.CustomerID=o.CustomerID;


SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName="Around the Horn" AND Customers.CustomerID=Orders.CustomerID;

			
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;


SELECT Orders.OrderID, Employees.FirstName
FROM Orders
RIGHT JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
ORDER BY Orders.OrderID;


SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;


SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;


SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers;


INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers
WHERE Country='Germany';


CREATE TABLE Persons
(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);


CREATE TABLE PersonsNotNull
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
)
```
