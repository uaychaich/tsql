--e299 | Mathematical Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT PI(), SalesOrderID, 
       RAND() AS _RAND,
       5000 - Totaldue AS base,
       ABS(5000 -TotalDue) AS _ABS,
       SIGN(5000 -TotalDue) AS _SIGN,
       CEILING(5000 -TotalDue) AS _CEILING,
       FLOOR(5000-TotalDue) AS _FLOOR,
       ROUND(5000-TotalDue,1) AS _ROUND,
       POWER(2,3) AS _POWER
FROM Sales.SalesOrderHeader ORDER BY SalesOrderID;


--13b7 | String Function | 2022-10-20 | Uaychai Chotjaratwanich
SELECT FirstName, LastName, 
       FirstName + MiddleName + LastName,
       CONCAT(FirstName, MiddleName, LastName) AS _CONCAT,
       CONCAT_WS(',',FirstName, MiddleName, LastName) AS _CONCAT_WS,
       FirstName + SPACE(5) + REPLICATE('5',3) AS _SPACE_REPLICATE,
       UPPER(FirstName) AS _UPPER,
       LOWER(FirstName) AS _LOWER,
       LEN(FirstName) AS _LEN,
       LEFT(FirstName,3) AS _LEFT,
       RIGHT(FirstName,3) AS _RIGHT,
       SUBSTRING(FirstName,2,3) AS _SUBSTRING,
       '   Uaychai   ' AS base,
       LTRIM('   Uaychai   ') AS _LTRIM,
       RTRIM('   Uaychai   ') AS _RTRIM,
       TRIM('   Uaychai   ') AS _TRIM,
       PATINDEX('%st%',FirstName) AS _PATINDEX,
       REPLACE(FirstName,'st','Uaychai'),
       STUFF(FirstName,3,2,'Uaychai')
FROM Person.Person;
