--8593 | Prerequisite | 2022-12-21 | Uaychai Chotjaratwanich
SELECT *  INTO #Culture FROM Production.Culture;


--7a19 | Query | 2022-12-21 | Uaychai Chotjaratwanich
INSERT #Culture VALUES('uo','Uaychai',SYSDATETIME());


--3c95 | Query with check | 2022-12-21 | Uaychai Chotjaratwanich
DECLARE @CultureIDInput NVARCHAR(10)='bb';
DECLARE @NameInput NVARCHAR(50)='Kiki';
DECLARE @ModifiedDate DATETIME2=SYSDATETIME();

IF @CultureIDInput != ''
    INSERT #Culture VALUES(@CultureIDInput, @NameInput, @ModifiedDate);
ELSE
    THROW 50001,'@CultureIDInput cannot blank',1;
GO 


--a61d | CREATE PROCEDURE | 2022-12-21 | Uaychai Chotjaratwanich
CREATE PROCEDURE dbo.InsertCulture(@CultureIDInput NVARCHAR(10), @NameInput NVARCHAR(50), @ModifiedDate DATETIME2)
AS
    IF @CultureIDInput != ''
        INSERT #Culture VALUES(@CultureIDInput, @NameInput, @ModifiedDate);
    ELSE
        THROW 50001,'@CultureIDInput cannot blank',1;
GO 


--bf03 | Use PROCEDURE | 2022-12-21 | Uaychai Chotjaratanich
EXEC dbo.InsertCulture '','bibi','2022-12-22';
EXEC dbo.InsertCulture 'bb','bibi','2022-12-22';


--cd01 | DROP PROCEDURE | 2022-12-21 | Uaychai Chotjaratwanich
DROP PROCEDURE dbo.InsertCulture;
