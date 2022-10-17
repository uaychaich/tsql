--80b6 | ORDER BY Clause Structure | 2022-10-17 | Uaychai Chotjaratwanich
--SELECT...FROM...JOIN...WHERE...ORDER BY Expression1 [ASC|DESC], Expression2 [ASC|DESC], ...


--e2d3 | Example | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, a.LineTotal
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.LineTotal > 10000
ORDER BY b.Name ASC, a.LineTotal DESC, a.SalesOrderID;


--11ce | Consideration | 2022-10-17 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.ProductID, b.Name, a.UnitPrice, a.OrderQty, 
       a.UnitPrice * a.OrderQty AS CustomLineTotal 
FROM Sales.SalesOrderDetail a 
INNER JOIN Production.Product b ON a.ProductID = b.ProductID
WHERE a.UnitPrice * a.OrderQty > 10000
ORDER BY b.Name ASC, a.UnitPrice * a.OrderQty DESC, a.SalesOrderID;