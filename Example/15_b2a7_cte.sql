--a430 | Common Table Expression | 2022-10-25 | Uaychai Chotjaratwanich
WITH TableA AS (SELECT * FROM Sales.SalesOrderHeader),TableB AS (SELECT * FROM Sales.SalesOrderDetail)
SELECT * FROM TableA;


--5735 | Consideration | 2022-10-25 | Uaychai Chotjaratwanich
WITH TableA AS (SELECT * FROM Sales.SalesOrderHeader ORDER BY SalesOrderID),TableB AS (SELECT * FROM Sales.SalesOrderDetail)
SELECT * FROM TableA;

--053d | Table Subquery Alternative | 2022-10-25 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, 
       SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _SUM
FROM Sales.SalesOrderHeader 
WHERE SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) > 200000 
ORDER BY TerritoryID, SalesOrderID;


--926c | Self Join and Recursive (Self Union) | 2022-10-25 | Uaychai Chotjaratwanich
SELECT EmployeeKey, FirstName, LastName, ParentEmployeeKey FROM AdventureWorksDW.dbo.DimEmployee;
WITH TableA AS 
(
    SELECT EmployeeKey, FirstName, LastName, ParentEmployeeKey, 1 AS [Level] FROM AdventureWorksDW.dbo.DimEmployee WHERE ParentEmployeeKey IS NULL
    UNION ALL
    SELECT a.EmployeeKey, a.FirstName, a.LastName, a.ParentEmployeeKey, b.[Level] +1
    FROM AdventureWorksDW.dbo.DimEmployee a INNER JOIN TableA b ON a.ParentEmployeeKey = b.EmployeeKey
)
SELECT * FROM TableA;