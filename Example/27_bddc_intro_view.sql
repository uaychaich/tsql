--8fe3 | Query | 2022-12-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
       b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
ON a.SalesOrderID = b.SalesOrderID 
INNER JOIN Production.Product c 
ON b.ProductID = c.ProductID;


--8ac1 | CREATE VIEW | 2022-12-21 | Uaychai Chotjaratwanich
GO
CREATE VIEW Sales.vSalesOrderHeaderDetail
AS 
    SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
           b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
    FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
    ON a.SalesOrderID = b.SalesOrderID 
    INNER JOIN Production.Product c 
    ON b.ProductID = c.ProductID;
GO


--daad | Use VIEW | 2022-12-21 | Uaychai Chotjaratwanich
SELECT * FROM Sales.vSalesOrderHeaderDetail;


--13ba | DROP VIEW | 2022-12-21 | Uaychai Chotjaratwanich
DROP VIEW Sales.vSalesOrderHeaderDetail;


--6769 | Beware | 2022-12-21 | Uaychai Chotjaratwanich
GO
CREATE VIEW Sales.vSalesOrderHeaderDetail2
AS 
    SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
           b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
           --,b.OrderQty * (b.UnitPrice-b.UnitPriceDiscount)
    FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
    ON a.SalesOrderID = b.SalesOrderID 
    INNER JOIN Production.Product c 
    ON b.ProductID = c.ProductID
    ORDER BY a.SalesOrderID;
GO