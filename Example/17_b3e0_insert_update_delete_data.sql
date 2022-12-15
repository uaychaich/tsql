--8a9b | SELECT ... INTO | 2022-12-15 | Uaychai Chotjaratwanich
SELECT * INTO #Culture FROM Production.Culture;
SELECT * INTO #SalesOrderHeader FROM Sales.SalesOrderHeader;
SELECT * INTO #SalesOrderDetail FROM Sales.SalesOrderDetail;


--5be2 | INSERT new rows | 2022-12-15 | Uaychai Chotjaratwanich
INSERT #Culture VALUES ('uo','Uaychai',SYSDATETIME()),('yd','Yoda',SYSDATETIME());
INSERT #Culture(CultureID,[Name],ModifiedDate) VALUES ('pp','PointPoint',SYSDATETIME());
INSERT #Culture([Name],CultureID,ModifiedDate) VALUES ('TingTing','tt',SYSDATETIME());


--fcd2 | UPDATE specific row(s) | 2022-12-15 | Uaychai Chotjaratwanich
UPDATE #Culture SET [Name] = 'PingPing' WHERE CultureID = 'pp';


--4804 | DELETE specific row(s) | 2022-12-15 | Uaychai Chotjaratwanich
DELETE #Culture WHERE CultureID='pp';

