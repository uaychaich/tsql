--8a9b | SELECT ... INTO | 2022-12-17 | Uaychai Chotjaratwanich
SELECT * INTO #SalesOrderHeader FROM Sales.SalesOrderHeader;
SELECT * INTO #SalesOrderDetail FROM Sales.SalesOrderDetail;
SELECT * INTO #Culture FROM Production.Culture;
SELECT * INTO #Culture2 FROM Production.Culture; TRUNCATE TABLE #Culture2;

--5be2 | INSERT new rows | 2022-12-15 | Uaychai Chotjaratwanich
INSERT #Culture VALUES ('uo','Uaychai',SYSDATETIME()),('yd','Yoda',SYSDATETIME());
INSERT #Culture(CultureID,[Name],ModifiedDate) VALUES ('pp','PointPoint',SYSDATETIME());
INSERT #Culture([Name],CultureID,ModifiedDate) VALUES ('TingTing','tt',SYSDATETIME());


--fcd2 | UPDATE specific row(s) | 2022-12-15 | Uaychai Chotjaratwanich
UPDATE #Culture SET [Name] = 'PingPing' WHERE CultureID = 'pp';


--4804 | DELETE specific row(s) | 2022-12-15 | Uaychai Chotjaratwanich
DELETE #Culture WHERE CultureID='pp';


--0443 | INSERT rows from other table | 2022-12-17 | Uaychai Chotjaratwanich
INSERT #Culture2 SELECT * FROM #Culture;


--1e83 | UPDATE rows with condition from other table | 20202-12-17 | Uaychai Chotjaratwanich
UPDATE #SalesOrderDetail SET OrderQty = OrderQty +1 
FROM #SalesOrderDetail sod INNER JOIN #SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.TerritoryID = 5;


--477d | DELETE rows with condition from other table | 2012-12-17 | Uaychai Chotjaratwanich
DELETE #SalesOrderDetail
FROM #SalesOrderDetail sod INNER JOIN #SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.TerritoryID = 5;