--bcbe | OVER...ORDER BY | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID)
FROM Sales.SalesOrderHeader ORDER BY TerritoryID, SalesOrderID;


--1fa5 | OVER...PARTITION BY | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, SUM(TotalDue) OVER(PARTITION BY TerritoryID
                                                               ORDER BY TerritoryID, SalesOrderID)
FROM Sales.SalesOrderHeader ORDER BY TerritoryID, SalesOrderID;


--9b7f | OVER...ROWS BETWEEN...PRECEDING | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, SUM(TotalDue) OVER(PARTITION BY TerritoryID
                                                               ORDER BY TerritoryID, SalesOrderID
                                                               ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM Sales.SalesOrderHeader ORDER BY TerritoryID, SalesOrderID;


--6791 | OVER...ROWS BETWEEN...FOLLOWING | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, SUM(TotalDue) OVER(PARTITION BY TerritoryID
                                                               ORDER BY TerritoryID, SalesOrderID
                                                               ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING )
FROM Sales.SalesOrderHeader ORDER BY TerritoryID, SalesOrderID;


--93fd | Analytic Function | 2022-10-21 | Uaychai Chotjaratwanich
SELECT TerritoryID, SalesOrderID, TotalDue, 
       SUM(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _SUM,
       AVG(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _AVG,
       MAX(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _MAX,
       MIN(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _MIN,
       COUNT(TotalDue) OVER(ORDER BY TerritoryID, SalesOrderID) AS _COUNT
FROM Sales.SalesOrderHeader ORDER BY TerritoryID, SalesOrderID;


--396a | Rangking Function | 2022-10-21 | Uaychai Chotjaratwanich
SELECT SalesOrderID, TotalDue, 
       RANK() OVER (ORDER BY TotalDue DESC) AS _RANK, 
       DENSE_RANK() OVER (ORDER BY TotalDue DESC) AS _DENSE_RANK,
       ROW_NUMBER() OVER (ORDER BY TotalDue DESC) AS _ROW_NUMBER,
       NTILE(4) OVER (ORDER BY TotalDue DESC) AS _NTILE
FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC, SalesOrderID ASC;


--76a5 | Position Function | 2022-10-21 | Uaychai Chotjaratwanich
SELECT SalesOrderID, TotalDue, 
       LAG(TotalDue,1) OVER (ORDER BY TotalDue DESC) AS _LAG,
       LEAD(TotalDue,1) OVER (ORDER BY TotalDue DESC) AS _LEAD,
       FIRST_VALUE(TotalDue) OVER (ORDER BY TotalDue DESC) AS _FIRST_VALUE,
       LAST_VALUE(TotalDue) OVER(ORDER BY TotalDue DESC) AS _LAST_VALUE
FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC, SalesOrderID ASC;