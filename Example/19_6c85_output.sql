--902f | Prerequisite | 2022-12-17 | Uaychai Chotjaratwnich
SELECT * INTO #SalesOrderHeader FROM Sales.SalesOrderHeader;
SELECT * INTO #SalesOrderDetail FROM Sales.SalesOrderDetail;
SELECT * INTO #Culture FROM Production.Culture;
SELECT * INTO #Culture2 FROM Production.Culture; TRUNCATE TABLE #Culture2;


--e402 | OUTPUT Clause in INSERT | 2022-12-17 | Uaychai Chotjaratwanich
INSERT #Culture2 OUTPUT inserted.CultureID, inserted.Name, inserted.ModifiedDate
SELECT * FROM #Culture;


--22bd | OUTPUT Clause in UPDATE | 2022-12-17 | Uaychai Chotjaratwanich
UPDATE #SalesOrderDetail SET OrderQty = OrderQty +1 
OUTPUT inserted.SalesOrderID, inserted.SalesOrderDetailID, inserted.OrderQty, inserted.UnitPrice, inserted.LineTotal,
       deleted.SalesOrderID, deleted.SalesOrderDetailID, deleted.OrderQty, deleted.UnitPrice, deleted.LineTotal
FROM #SalesOrderDetail sod INNER JOIN #SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.TerritoryID = 5;


--bb46 | OUTPUT Clause in DELETE | 2022-12-17 | Uaychai Chotjaratwanich
DELETE #SalesOrderDetail
OUTPUT  deleted.SalesOrderID, deleted.SalesOrderDetailID, deleted.OrderQty, deleted.UnitPrice, deleted.LineTotal
FROM #SalesOrderDetail sod INNER JOIN #SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.TerritoryID = 5;


--49ad | OUTPUT Clause im MERGE | 2022-12-17 | Uaychai Chotjaratwanich
MERGE #Culture2 AS tg 
USING #Culture AS src ON src.CultureID = tg.CultureID
WHEN MATCHED THEN UPDATE SET tg.Name = src.Name 
WHEN NOT MATCHED THEN INSERT(CultureID, [Name], ModifiedDate) VALUES(src.CultureID, src.Name, src.ModifiedDate)
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT inserted.CultureID, inserted.Name, inserted.ModifiedDate,
       deleted.CultureID, deleted.Name, deleted.ModifiedDate;