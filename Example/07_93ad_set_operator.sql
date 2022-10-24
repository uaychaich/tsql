--93ad | UNION | 2022-10-24 | Uaychai Chotjaratwanich
SELECT BusinessEntityID, Name, 'Store' AS [Type]  FROM Sales.Store WHERE Name LIKE 'A%'
UNION
SELECT BusinessEntityID, Name, 'Vendor' FROM Purchasing.Vendor WHERE Name LIKE 'B%'
ORDER BY BusinessEntityID;


--a9ec | Create Sample | 2022-10-24 | Uaychai Chotjaratwanich
IF NOT EXISTS(SELECT * FROM sys.schemas WHERE [name] = 'Uaychai') EXEC('CREATE SCHEMA Uaychai');
GO
IF NOT EXISTS(SELECT * FROM sys.tables WHERE [object_id] = OBJECT_ID('Uaychai.Province'))
BEGIN 
   CREATE TABLE Uaychai.Province (ID INT, [Name] NVARCHAR(50));
   INSERT Uaychai.Province VALUES(1,'Krungthep'),(2,'Chiangmai'),(3,'Khonkan'),(4,'Songkla'),(5,'Ayuthaya');
END 
IF NOT EXISTS(SELECT * FROM sys.tables WHERE [object_id] = OBJECT_ID('Uaychai.Person'))
BEGIN 
   CREATE TABLE Uaychai.Person(ID INT, [Name] NVARCHAR(50), ProvinceID INT);
   INSERT Uaychai.Person VALUES(1001,'Uaychai',1),(1002,'Somchai',3),(1003,'Somying',3),(1004,'Somsak',NULL),(1005,'Sommai',6);
END 
SELECT * FROM Uaychai.Province;
SELECT * FROM Uaychai.Person;


--e4d6 | UNION ALL | 2022-10-24 | Uaychai Chotjaratwanich
SELECT ID FROM Uaychai.Province
UNION ALL 
SELECT ProvinceID FROM Uaychai.Person;


--4601 | INTERSECT | 2022-10-24 | Uaychai Chotjaratwanich
SELECT ID FROM Uaychai.Province
INTERSECT 
SELECT ProvinceID FROM Uaychai.Person;


--e166 | EXCEPT 1| 2022-10-24 | Uaychai Chotjaratwanich
SELECT ID FROM Uaychai.Province
EXCEPT
SELECT ProvinceID FROM Uaychai.Person;


--e166 | EXCEPT 2| 2022-10-24 | Uaychai Chotjaratwanich
SELECT ProvinceID FROM Uaychai.Person
EXCEPT 
SELECT ID FROM Uaychai.Province;
