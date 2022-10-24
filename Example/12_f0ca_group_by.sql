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


--5686 | Drill Up/Down | 2022-10-24 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesPersonID, SUM(TotalDue) FROM Sales.SalesOrderHeader
GROUP BY TerritoryID, SalesPersonID
UNION 
SELECT TerritoryID, NULL, SUM(TotalDue) FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
UNION
SELECT NULL, NULL, SUM(TotalDue) FROM Sales.SalesOrderHeader
ORDER BY TerritoryID, SalesPersonID;


--bf4a | GROUP BY GROUPING SETS | 2022-10-24 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesPersonID, SUM(TotalDue) FROM Sales.SalesOrderHeader
GROUP BY GROUPING SETS((TerritoryID, SalesPersonID),(TerritoryID),());


--8ddc | GROUPING_ID | 2022-10-24 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesPersonID, GROUPING_ID(SalesPersonID), SUM(TotalDue) FROM Sales.SalesOrderHeader
GROUP BY GROUPING SETS((TerritoryID, SalesPersonID),(TerritoryID),());


--dbf8 | ROLLUP | 2022-10-24 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesPersonID, GROUPING_ID(SalesPersonID), SUM(TotalDue) FROM Sales.SalesOrderHeader
GROUP BY ROLLUP(TerritoryID, SalesPersonID);


--4835 | CUBE | 2022-10-24 | Uaychai Chotjaratwanich
SELECT TerritoryID, GROUPING_ID(TerritoryID),SalesPersonID, GROUPING_ID(SalesPersonID), SUM(TotalDue) 
FROM Sales.SalesOrderHeader
GROUP BY CUBE(TerritoryID, SalesPersonID);