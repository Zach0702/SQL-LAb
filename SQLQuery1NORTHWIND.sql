SELECT * FROM Northwind.dbo.Customers --question 1 

SELECT DISTINCT Country FROM Northwind.dbo.Customers  --question 2 

SELECT * FROM Northwind.dbo.Customers WHERE Customers.CustomerID LIKE 'BL%' --question 3

SELECT TOP 100 * FROM Northwind.dbo.Orders --question 4 

SELECT * FROM Northwind.dbo.Customers c 
WHERE c.PostalCode = '1010' or c.PostalCode = '3012' or c.PostalCode = '12209' or c.PostalCode = '05023' --Question5

SELECT * FROM Northwind.dbo.Orders o WHERE o.ShipRegion IS NOT NULL  --Question 6

SELECT Country, City FROM Northwind.dbo.Customers ORDER BY Country, City Asc --Question 7

INSERT INTO Northwind.dbo.Customers 
VALUES ('AAAHD','Ford','Vlad','Engineer','123 This Road', 'Detroit', 'Michigan','48220','USA','586-707-3906','248-333-4444') --Question 8

UPDATE Northwind.dbo.Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry like 'France';  --question 9

DELETE FROM Northwind.dbo.[Order Details]  WHERE [Order Details].Quantity = 1 --Question 10

SELECT AVG(Quantity) AS AverageQuantity FROM Northwind.dbo.[Order Details] --Question 11
SELECT MAX(Quantity) AS MaxQuantity FROM Northwind.dbo.[Order Details] --Question 11
SELECT MIN(Quantity) AS MINQuantity FROM Northwind.dbo.[Order Details] --Question 11

SELECT AVG(Quantity) AS AverageQuantity FROM Northwind.dbo.[Order Details] --Question 12
GROUP by OrderID
SELECT MAX(Quantity) AS MaxQuantity FROM Northwind.dbo.[Order Details] --Question 12
GROUP BY OrderID
SELECT MIN(Quantity) AS MINQuantity FROM Northwind.dbo.[Order Details] --Question 12
GROUP by OrderID

SELECT CustomerID FROM Northwind.dbo.Orders WHERE OrderID = 10290 --Question 13

SELECT * FROM Northwind.dbo.Orders LEFT JOIN Northwind.dbo.Customers 
ON Orders.CustomerID = Customers.CustomerID -- Question 14
SELECT * FROM Northwind.dbo.Orders RIGHT JOIN Northwind.dbo.Customers 
ON Orders.CustomerID = Customers.CustomerID -- Question 14
SELECT * FROM Northwind.dbo.Orders INNER JOIN Northwind.dbo.Customers 
ON Orders.CustomerID = Customers.CustomerID -- Question 14

SELECT employees.firstname
FROM employees 
LEFT OUTER JOIN employees e ON employees.reportsto = e.employeeID 
WHERE employees.reportsto IS NULL; --Question 15

SELECT employees.firstname
FROM employees 
LEFT OUTER JOIN employees e ON employees.reportsto = e.employeeID 
WHERE employees.reportsto = 2; --Question 16




