--b3ff | Prerequisite | 2022-12-21 | Uaychai Chotjaratwanich
CREATE TABLE #SalesOrderHeader(SalesOrderID INT PRIMARY KEY, OrderDate DATETIME2);
CREATE TABLE #SalesOrderDetail(LineItemID INT PRIMARY KEY , 
                               SalesOrderID INT FOREIGN KEY REFERENCES #SalesOrderHeader(SalesOrderID),
                               ProductName NVARCHAR(50), Qty INT);
INSERT #SalesOrderHeader VALUES(1001,SYSDATETIME());
INSERT #SalesOrderDetail VALUES(1,1001,'Yoda Doll', 3),(2,1001,'Pikachu Doll', 2);
SELECT * FROM #SalesOrderHeader;
SELECT * FROM #SalesOrderDetail;


--a66d | Problem | 2022-12-21 | Uaychai Chotjaratwanich
INSERT #SalesOrderHeader VALUES(1001,SYSDATETIME());
INSERT #SalesOrderDetail VALUES(3,1001,'X-Wing Figure', 3),(4,1001,'Luke Light Saber', 1);


--3a69 | Transaction | 2022-12-21 | Uaychai Chotjaratwanich
BEGIN TRANSACTION;
INSERT #SalesOrderHeader VALUES(1001,SYSDATETIME());
INSERT #SalesOrderDetail VALUES(3,1001,'X-Wing Figure', 3),(4,1001,'Luke Light Saber', 1);
ROLLBACK TRANSACTION;
COMMIT TRANSACTION;


--edcc | Transaction with TRY...CATCH | 2022-12-21 | Uaychai Chotjaratwanich
BEGIN TRY 
    BEGIN TRANSACTION;
        INSERT #SalesOrderHeader VALUES(1001,SYSDATETIME());
        INSERT #SalesOrderDetail VALUES(3,1001,'X-Wing Figure', 3),(4,1001,'Luke Light Saber', 1);
    COMMIT TRANSACTION;
END TRY 
BEGIN CATCH
    ROLLBACK TRANSACTION;
END CATCH 