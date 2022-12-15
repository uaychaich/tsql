--c703 | Basic Data Types | 2022-12-06 | Uaychai Chotjaratwanich
--Exact Whole Number: TINYINT SMALLINT INT BIGINT BIT
--Exact Decimal Number: SMALLMONEY MONEY NUMERIC DECIMAL
--Approximate Decimal Number: FLOAT REAL
--Date and Time: SMALLDATETIME DATETIME DATETIME2 DATE TIME DATETIMEOFFSET
--One Language String: CHAR VARCHAR TEXT
--Multi Language String: NCHAR NVARCHAR NTEXT
--https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16


--8a29 | Example Exact Whole Number | 2022-12-06 | Uaychai Chotjaratwanich
DECLARE @Var1 TINYINT = 222;
SELECT @Var1;


--2bbb | Example Exact Decimal Number | 2022-12-15 | Uaychai Chotjaratwanich
DECLARE @Var2 NUMERIC(20,6) = 222.45626;
SELECT @Var2;


--5c55 | Example Approximate Decimal Number | 2022-12-15 | Uaychai Chotjaratwanich
DECLARE @Var3 FLOAT = 0.599654522;
SELECT @Var3;


--b145 | Example Date and Time | 2022-12-15 | Uaychai Chotjaratwanich
DECLARE @Var4 DATETIME2 = '2022-12-15T23:13:45.2356897';
SELECT @Var4;


--a47a | Example One Language String | 2022-12-15 | Uaychai Chotjaratwanich
DECLARE @Var5 VARCHAR(50) = 'Uaychai';
SELECT @Var5;


--0110 | Example Multi Language String | 2022-12-15 | Uaychai Chotjaratwanich
DECLARE @Var6 NVARCHAR(50) = 'Uaychai';
SELECT @Var6;