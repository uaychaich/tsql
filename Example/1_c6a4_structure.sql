--746a | Main Clause | 2022-10-15 | Uaychai Chotjaratwanich
SELECT TerritoryID, SUM(TotalDue)
FROM Sales.SalesOrderHeader
WHERE OnlineOrderFlag = 0
GROUP BY TerritoryID
HAVING TerritoryID > 5
ORDER BY TerritoryID;


--cd7b | Space, New Line, Colon, Semicolon,  Square Brackets| 2022-10-15 | Uaychai Chotjaratwanich
SELECT SalesOrderID AS [Order ID], OrderDate, [OnlineOrderFlag], TotalDue
FROM [Sales].[SalesOrderHeader]
ORDER BY SalesOrderID, [OrderDate];


--05d6 | Comment | 2022-10-15 | Uaychai Chotjaratwanich
--Author : Uaychai Chotjaratwanich
/*
    Author : Uaychai Chotjaratwanich
    Created Date : 2022-10-15
*/
SELECT SalesOrderID, OrderDate, OnlineOrderFlag, TotalDue
FROM Sales.SalesOrderHeader
ORDER BY SalesOrderID, OrderDate;