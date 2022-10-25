--142b | Subquery | 2022-10-25 | Uaychai Chotjaratwanich
-- SubQuery is Query in Query


--5610 | Subquery as Expression | 2022-10-25 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, OrderDate, TotalDue, (SELECT AVG(TotalDue) FROM Sales.SalesOrderHeader) AS AverageTotalDue 
FROM Sales.SalesOrderHeader
WHERE TotalDue > (SELECT AVG(TotalDue) FROM Sales.SalesOrderHeader) ORDER BY TerritoryID, SalesOrderID;


--6021 | Correlated Subquery as Expression | 2022-10-25 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, OrderDate, TotalDue, 
       (SELECT AVG(TotalDue) FROM Sales.SalesOrderHeader b WHERE b.TerritoryID = a.TerritoryID) AS AverageTotalDue 
FROM Sales.SalesOrderHeader a
WHERE TotalDue > (SELECT AVG(TotalDue) FROM Sales.SalesOrderHeader b WHERE b.TerritoryID = a.TerritoryID) ORDER BY TerritoryID, SalesOrderID;


--5f63 | Subquery as Table | 2022-10-25 | Uaychai Chotjaratwanich
SELECT * 
FROM (SELECT * FROM Sales.SalesOrderHeader WHERE TerritoryID=1) a;


--0e7b | Subquery as Table Consideration | 2022-10-25 | Uaychai Chotjaratwanich
SELECT * 
FROM (SELECT * FROM Sales.SalesOrderHeader WHERE TerritoryID=1 ORDER BY SalesOrderID) a;


--34fb | Subquery as Table Advantage | 2022-10-25 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, 
       SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _SUM
FROM Sales.SalesOrderHeader 
WHERE SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) > 200000 
ORDER BY TerritoryID, SalesOrderID;


--638b | Subquery as Table in IN | 2022-10-25 | Uaychai Chotjaratwanich
SELECT *
FROM Production.Product
WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail);


--8285 | Subquery as Table in EXISTS | 2022-10-25 | Uaychai Chotjaratwanich
SELECT *
FROM Production.Product a 
WHERE EXISTS(SELECT * FROM Sales.SalesOrderDetail b WHERE b.ProductID = a.ProductID);

--9cb0 | Subquery as Table in ALL | 2022-10-25 | Uaychai Chotjaratwanich
SELECT * 
FROM Sales.SalesOrderHeader a
WHERE (SELECT AVG(LineTotal) FROM Sales.SalesOrderDetail) < ALL(SELECT LineTotal FROM Sales.SalesOrderDetail b WHERE a.SalesOrderID = b.SalesOrderID);


--e291 | Subquery as Table in SOME ANY | 2022-10-25 | Uaychai Chotjaratwanich
SELECT * 
FROM Sales.SalesOrderHeader a
WHERE (SELECT AVG(LineTotal) FROM Sales.SalesOrderDetail) < SOME(SELECT LineTotal FROM Sales.SalesOrderDetail b WHERE a.SalesOrderID = b.SalesOrderID);