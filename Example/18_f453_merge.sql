--8c85 | Prerequisite | 2022-12-17 | Uaychai Chotjaratwanich
SELECT * INTO #Culture FROM Production.Culture;
SELECT * INTO #Culture2 FROM Production.Culture; TRUNCATE TABLE #Culture2;


--e57c | MERGE | 2022-12-17 | Uaychai Chotjaratwanich
MERGE #Culture2 AS tg 
USING #Culture AS src ON src.CultureID = tg.CultureID
WHEN MATCHED THEN UPDATE SET tg.Name = src.Name 
WHEN NOT MATCHED THEN INSERT(CultureID, [Name], ModifiedDate) VALUES(src.CultureID, src.Name, src.ModifiedDate)
WHEN NOT MATCHED BY SOURCE THEN DELETE ;