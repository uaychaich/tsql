--156f | GROUP BY | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, OnlineOrderFlag
FROM Sales.SalesOrderHeader 
GROUP BY TerritoryID, OnlineOrderFlag
ORDER BY TerritoryID, OnlineOrderFlag;


--8f73 | Consideration | 2022-10-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID,TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.ProductID = 777
GROUP BY TerritoryID, OnlineOrderFlag
ORDER BY TerritoryID, OnlineOrderFlag, a.SalesOrderID;


--b74e | Consideration 2 | 2022-10-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID,TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE SUM(LineTotal) > 100000
GROUP BY TerritoryID, OnlineOrderFlag
ORDER BY TerritoryID, OnlineOrderFlag, a.SalesOrderID;


--f0de | How it work | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.ProductID = 777
GROUP BY TerritoryID, OnlineOrderFlag
ORDER BY TerritoryID, OnlineOrderFlag;