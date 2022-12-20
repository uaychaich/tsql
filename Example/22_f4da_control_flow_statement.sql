--1343 | PRINT | 2022-12-18 | Uaychai Chotjaratwanich
PRINT 'Uaychai Chotjaratwanich';


--960a | BEGIN...END | 2022-12-19 | Uaychai Chotjaratwanich
BEGIN PRINT 'Uaychai'; PRINT 'Chotjaratwanich'; END


--7a80 | IF | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 5;
IF @Var = 5 PRINT 'Five'; PRINT 'Other';
GO


--8844 | IF...ELSE... | 2022-12-18 | Uayhai Chotjaratwanich
DECLARE @Var INT = 5;
IF @Var = 5 PRINT 'Five'; ELSE PRINT 'No five'; PRINT 'Other'
GO


--2382 | IF...ELSE IF...ELSE | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 2;
IF @Var = 1 PRINT 'One'; ELSE IF @Var = 2 PRINT 'Two'; ELSE IF @Var = 3 PRINT 'Three'; ELSE PRINT 'Other';
GO


--4ecd | WHILE | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 1;
WHILE @Var <= 3 BEGIN PRINT @Var; SET @Var = @Var+1; END
GO 


--5fdb | CONTINUE and BREAK | 2022-12-18 | Uaychai Chotjaratwanich
DECLARE @Var INT = 0;
WHILE @Var <= 6 
BEGIN 
    SET @Var = @Var+1; 
    IF @Var = 3 CONTINUE;
    IF @Var = 5 BREAK;
    PRINT @Var; 
END
GO


--a61a | WAITFOR | 2022-12-19 | Uaychai Chotjaratwanich
WAITFOR DELAY '00:00:30';
WAITFOR TIME '21:40:00';


--9bdd | RETURN | 2022-12-20 | Uaychai Chotjaratwanich
PRINT 'Command 1';
RETURN
PRINT 'Command 2';