--9f6f | Introduction | 2022-10-16 | Uaychai Chotjaratwanich
SELECT * FROM Sales.SalesOrderHeader;
SELECT * FROM Sales.SalesOrderDetail;
SELECT * FROM Production.Product;


--c36f | Table Alias | 2022-10-16 | Uaychai Chotjaratwanich
SELECT a.*, a.SalesOrderID FROM Sales.SalesOrderHeader a;


--ba0b | INNER JOIN 1 | 2022-10-16 | Uaychai Chotjaratwanich
SELECT a.*, b.*, c.*
FROM Sales.SalesOrderHeader a 
INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
INNER JOIN Production.Product c ON b.ProductID = c.ProductID;


--2bc0 | INNER JOIN 2 | 2022-10-16 | Uaychai Chotjaratwanich
SELECT a.*, b.*, c.*
FROM Sales.SalesOrderHeader a 
JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
JOIN Production.Product c ON b.ProductID = c.ProductID;

--c29c | OUTER JOIN 1 | 2022-10-16 | Uaychai Chotjaratwanich
SELECT a.*, b.*, c.*
FROM Sales.SalesOrderHeader a 
INNER JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
RIGHT OUTER JOIN Production.Product c ON b.ProductID = c.ProductID;


--103b | OUTER JOIN 2 | 2022-10-16 | Uaychai Chotjaratwanich
SELECT a.*, b.*, c.*
FROM Sales.SalesOrderHeader a 
JOIN Sales.SalesOrderDetail b ON a.SalesOrderID = b.SalesOrderID
RIGHT JOIN Production.Product c ON b.ProductID = c.ProductID;


--f6fe | INNER vs LEFT OUTER vs RIGHT OUTER vs FULL OUTER Create Example | 2022-10-16 | Uaychai Chotjaratwanich
GO 
CREATE SCHEMA Uaychai; 
GO
CREATE TABLE Uaychai.Province (ID INT, [Name] NVARCHAR(50));
INSERT Uaychai.Province VALUES(1,'Krungthep'),(2,'Chiangmai'),(3,'Khonkan'),(4,'Songkla'),(5,'Ayuthaya');
CREATE TABLE Uaychai.Person(ID INT, [Name] NVARCHAR(50), ProvinceID INT);
INSERT Uaychai.Person VALUES(1001,'Uaychai',1),(1002,'Somchai',3),(1003,'Somying',3),(1004,'Somsak',NULL),(1005,'Sommai',NULL);
SELECT * FROM Uaychai.Province;
SELECT * FROM Uaychai.Person;


--09fb | INNER vs LEFT OUTER vs RIGHT OUTER vs FULL OUTER Example | 2022-10-16 | Uaychai Chotjaratwanich
SELECT * FROM Uaychai.Province;
SELECT * FROM Uaychai.Person;
SELECT a.*, b.* FROM Uaychai.Person a INNER JOIN Uaychai.Province b ON a.ProvinceID = b.ID;
SELECT a.*, b.* FROM Uaychai.Person a LEFT OUTER JOIN Uaychai.Province b ON a.ProvinceID = b.ID;
SELECT a.*, b.* FROM Uaychai.Person a RIGHT OUTER JOIN Uaychai.Province b ON a.ProvinceID = b.ID;
SELECT a.*, b.* FROM Uaychai.Person a FULL OUTER JOIN Uaychai.Province b ON a.ProvinceID = b.ID;


--2233 | CROSS JOIN | 2022-10-16 | Uaychai Chotjaratwanich
SELECT * FROM Uaychai.Province;
SELECT * FROM Uaychai.Person;
SELECT a.*, b.* FROM Uaychai.Person a CROSS JOIN Uaychai.Province b;


--e143 | Self Join Technique | 2022-10-16 | Uaychai Chotjaratwanich
SELECT EmployeeKey, FirstName, LastName, ParentEmployeeKey FROM AdventureWorksDW.dbo.DimEmployee;
SELECT emp.EmployeeKey, emp.FirstName, emp.LastName, emp.ParentEmployeeKey, 
       mng.EmployeeKey, mng.FirstName, mng.LastName
FROM AdventureWorksDW.dbo.DimEmployee emp 
INNER JOIN AdventureWorksDW.dbo.DimEmployee mng ON emp.ParentEmployeeKey = mng.EmployeeKey;

