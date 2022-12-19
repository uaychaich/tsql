--9da9 | Prerequisite | 2022-12-19 | Uaychai Chotjaratwanich
SELECT * INTO #Culture FROM Production.Culture;
ALTER TABLE #Culture ADD PRIMARY KEY(CultureID);


--57e2 | TRY...CATCH | 2022-12-19 | Uaychai Chotjaratwanich
BEGIN TRY
    INSERT #Culture VALUES('en','Uaychai',SYSDATETIME());
    INSERT #Culture VALUES('qq','QooQoo',SYSDATETIME());
END TRY
BEGIN CATCH

END CATCH


--577b | Error functions | 2022-12-19 | Uaychai Chotjaratwanich
BEGIN TRY
    INSERT #Culture VALUES('en','Uaychai',SYSDATETIME());
    INSERT #Culture VALUES('qq','QooQoo',SYSDATETIME());
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
    PRINT ERROR_NUMBER();
    PRINT ERROR_SEVERITY();
    PRINT ERROR_STATE();
    PRINT ERROR_LINE();
    PRINT ERROR_PROCEDURE();
END CATCH


--9a7e | Error step check | 2022-12-19 | Uaychai Chotjaratwanich
BEGIN TRY
    INSERT #Culture VALUES('en','Uaychai',SYSDATETIME());
    INSERT #Culture VALUES('qq','QooQoo',SYSDATETIME());
END TRY
BEGIN CATCH
    IF ERROR_NUMBER() = 2627
        PRINT 'Do something';
    ELSE IF ERROR_NUMBER() = 1500 
        PRINT 'Do something';
    ELSE
        PRINT 'Do something';
END CATCH