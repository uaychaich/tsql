--f0d8 | WHERE Clause Structure | 2022-10-17 | Uaychai Chotjaratwanich
--SELECT ... FROM ... JOIN ... WHERE boolean


--8dd7 | WHERE Clause Example | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.OrderDate, a.OnlineOrderFlag, b.ProductID, b.UnitPrice, b.OrderQty, b.LineTotal 
FROM Sales.SalesOrderHeader a 
INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE a.OnlineOrderFlag = 1;


--66e4 | Consideration | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.OrderDate, a.OnlineOrderFlag, b.ProductID, b.UnitPrice, b.OrderQty,
       b.UnitPrice * b.OrderQty AS CustomLineTotal 
FROM Sales.SalesOrderHeader a 
INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.UnitPrice * b.OrderQty > 10000;