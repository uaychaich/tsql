--f2b7 | Using Variable | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 5;
SET @Var=20;
SELECT @Var = COUNT(*) FROM Production.Culture;
SELECT @Var;
GO


--abc6 | Warning 1 | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 5;
GO
--SET @Var =20;
GO


--48c1 | Warning 2 | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 20;
--DECLARE @Var INT = 80;
GO