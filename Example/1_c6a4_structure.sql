--746a | Main Clause | 2022-10-16 | Uaychai Chotjaratwanich
SELECT YEAR(a.OrderDate), SUM(b.LineTotal)
FROM Sales.SalesOrderHeader a
JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
WHERE a.OnlineOrderFlag = 1
GROUP BY YEAR(a.OrderDate)
HAVING SUM(b.LineTotal) > 5000000
ORDER BY YEAR(a.OrderDate);


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