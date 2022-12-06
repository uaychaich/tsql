--c703 | Basic Data Types | 2022-12-06 | Uaychai Chotjaratwanich
--Exact Whole Number: TINYINT SMALLINT INT BIGINT BIT
--Exact Decimal Number: SMALLMONEY MONEY NUMERIC DECIMAL
--Approximate Decimal Number: FLOAT REAL
--Date and Time: SMALLDATETIME DATETIME DATETIME2 DATE TIME DATETIMEOFFSET
--One Language String: CHAR VARCHAR TEXT
--Multi Language String: NCHAR NVARCHAR NTEXT


--8a29 | Example Exact Whole Number | 2022-12-06 | Uaychai Chotjaratwanich
DECLARE @Var1 TINYINT = 222;
SELECT @Var1;