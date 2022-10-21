--80b6 | ORDER BY Clause Structure | 2022-10-17 | Uaychai Chotjaratwanich
--SELECT...FROM...JOIN...WHERE...ORDER BY Expression1 [ASC|DESC], Expression2 [ASC|DESC], ...


--e2d3 | Example | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.LineTotal > 10000
ORDER BY b.Name ASC, a.LineTotal DESC, a.SalesOrderID;


--11ce | Consideration | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, 
       a.UnitPrice * a.OrderQty AS CustomLineTotal 
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY b.Name ASC, a.UnitPrice * a.OrderQty DESC, a.SalesOrderID;


--3303 | COLLATE | 2022-10-20 | Uaychai Chotjaratwanich
SELECT * FROM Person.Person 
ORDER BY FirstName COLLATE SQL_Latin1_General_CP1_CS_AS ASC , LastName ASC; 
UPDATE Person.Person SET FirstName = 'aaron' WHERE BusinessEntityID IN (5501,5492);


--b375 | How it work | 2022-10-20 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, 
       a.UnitPrice * a.OrderQty AS CustomLineTotal 
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY b.Name ASC, a.UnitPrice * a.OrderQty DESC, a.SalesOrderID;


--ce79 | TOP X ROW | 2022-10-20 | Uaychai Chotjaratwanich
SELECT TOP 8 a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY a.LineTotal DESC


--2069 | TOP X PERCENT | 2022-10-20 | Uaychai Chotjaratwanich
SELECT TOP 10 PERCENT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY a.LineTotal DESC


--9197 | TOP WITH TIES | 2022-10-20 | Uaychai Chotjaratwanich
SELECT TOP 8 WITH TIES a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY a.LineTotal DESC


--0237 | OFFSET...FETCH | 2022-10-20 | Uaychai Chotjaratwanich | > 2012
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY a.LineTotal DESC
OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY;
