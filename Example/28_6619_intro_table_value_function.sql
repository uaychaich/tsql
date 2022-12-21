--bd5e | Query | 2022-12-21 | Uaychai Chotjaratwanich
SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
       b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
ON a.SalesOrderID = b.SalesOrderID 
INNER JOIN Production.Product c 
ON b.ProductID = c.ProductID
WHERE a.SalesOrderID = 50745;


--9a52 | CREATE table-value function | 2022-12-21 | Uaychai Chotjaratwanich
GO
CREATE FUNCTION Sales.tvfSalesOrderHeaderDetailFilterbySalesOrderID(@SaleOrderID INT) 
RETURNS TABLE
AS RETURN(SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
                 b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
          FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
          ON a.SalesOrderID = b.SalesOrderID 
          INNER JOIN Production.Product c 
          ON b.ProductID = c.ProductID
          WHERE a.SalesOrderID = @SaleOrderID)
GO 


--f3b7 | Use table-value function | 2022-12-21 | Uaychai Chotjaratwanich
SELECT * FROM Sales.tvfSalesOrderHeaderDetailFilterbySalesOrderID(50745);


--8d34 | DROP table-value function | 2022-12-21 | Uaychia Chotjaratwanich
DROP FUNCTION Sales.tvfSalesOrderHeaderDetailFilterbySalesOrderID;


--ac68 | Beware | 2022-12-21 | Uaychai Chotjaratwanich
GO
CREATE FUNCTION Sales.tvfSalesOrderHeaderDetailFilterbySalesOrderID(@SaleOrderID INT) 
RETURNS TABLE
AS RETURN(SELECT a.SalesOrderID, a.OrderDate, b.SalesOrderDetailID, c.Name, 
                 b.OrderQty, b.UnitPrice, b.UnitPriceDiscount, b.LineTotal
                 --,b.OrderQty * (b.UnitPrice-b.UnitPriceDiscount)
          FROM Sales.SalesOrderHeader a INNER JOIN Sales.SalesOrderDetail b 
          ON a.SalesOrderID = b.SalesOrderID 
          INNER JOIN Production.Product c 
          ON b.ProductID = c.ProductID
          WHERE a.SalesOrderID = @SaleOrderID
          ORDER BY a.SalesOrderID)
GO 