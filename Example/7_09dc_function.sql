--3189 | Scalar Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT SalesOrderID, TotalDue, FORMAT(TotalDue,'0,000.00')
FROM Sales.SalesOrderHeader;


--8ca1 | Windows Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT SalesOrderID, TotalDue, SUM(TotalDue) OVER (ORDER BY SalesOrderID)
FROM Sales.SalesOrderHeader;


--2d68 | Aggregate Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT SUM(TotalDue) 
FROM Sales.SalesOrderHeader;


--8ab8 | Table Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT * FROM sys.fn_helpcollations();