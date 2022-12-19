--c1a1 | Prerequisite | 2022-12-19 | Uaychai Chotjaratwanich
SELECT * INTO #Culture FROM Production.Culture;
ALTER TABLE #Culture ADD PRIMARY KEY(CultureID);


--89ea | Compile error | 2022-12-19 | Uaychai Chotjaratwanich
--INSER #Culture VALUES('zz','ZooZoo',SYSDATETIME());
--INSERT #Cultur VALUES('yy','YooYoo',SYSDATETIME());
--INSERT #Culture VALUES('xx','XooXoo',SYSDATETIME());
--GO


--f1f6 | Runtime error | 2022-12-19 | Uaychai Chotjaratwanich
INSERT #Culture VALUES('en','XooZoo',SYSDATETIME());
INSERT #Culture VALUES('xy','XooYoo',SYSDATETIME());
GO