--232e | HAVING | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.ProductID = 777
GROUP BY TerritoryID, OnlineOrderFlag
HAVING SUM(LineTotal) > 100000
ORDER BY TerritoryID, OnlineOrderFlag;


--d949 | Consideration | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.ProductID = 777
GROUP BY TerritoryID, OnlineOrderFlag
HAVING YEAR(OrderDate) > 2013
ORDER BY TerritoryID, OnlineOrderFlag;


--6fe2 | How it work | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, OnlineOrderFlag, SUM(LineTotal)
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE b.ProductID = 777
GROUP BY TerritoryID, OnlineOrderFlag
HAVING SUM(LineTotal) > 100000
ORDER BY TerritoryID, OnlineOrderFlag;