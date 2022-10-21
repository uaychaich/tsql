--ea5c | Aggregate Function | 2022-10-21 | Uaychai Chotjaratwanich
SELECT SUM(TotalDue) AS _SUM, 
       AVG(TotalDue) AS _AVG, 
       MAX(TotalDue) AS _MAX,
       MIN(TotalDue) AS _MIN,
       COUNT(TotalDue) AS _COUNT
FROM Sales.SalesOrderHeader;

--c24e | Consideration | 2022-10-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, SUM(b.LineTotal), AVG(b.LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID 
WHERE b.ProductID = 777
ORDER BY a.SalesOrderID;


--6fb4 | How it work | 2022-10-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, SUM(b.LineTotal), AVG(b.LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID 
WHERE b.ProductID = 777
ORDER BY a.SalesOrderID;