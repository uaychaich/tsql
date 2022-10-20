--8835 | FROM Clause Structure | 2022-10-15 | Uaychai Chotjaratwanich
--SELECT Expression1, Expression2, ... FROM TableExpression


--664b | Table | 2022-10-15 | Uaychai Chotjaratwanich
SELECT * FROM Person.Person;


--6c29 | View | 2022-10-15 | Uaychai Chotjaratwanich
SELECT * FROM HumanResources.vEmployee;


--6991 | Function | 2022-10-15 | Uaychai Chotjaratwanich
SELECT * FROM dbo.ufnGetContactInformation(1);


--c996 | Sub Query | 2022-10-15 | Uaychai Chotjaratwanich
SELECT * FROM (SELECT * FROM Person.Person) a;


--dec7 | Common Table Expression | 2022-10-15 | Uaychai Chotjaratwanich
WITH table1 AS (SELECT * FROM Person.Person)
SELECT * FROM table1;


--7d6a | Column(s) | 2022-10-15 | Uaychai Chotjaratwanich
SELECT FirstName, LastName FROM Person.Person;


--ef67 | Column(s) with Column Alias | 2022-10-15 | Uaychai Chotjaratwanich
SELECT FirstName, 
       FirstName AS [First Name1],
       FirstName [First Name2],
       [First Name3] = FirstName
FROM Person.Person;


--86f9 | Column(s) with Other Expression | 2022-10-20 | Uaychai Chotjaratwanich
SELECT FirstName, LastName AS [Last Name], 
       FirstName + LastName, 
       LEFT(FirstName,3),
       FirstName + 'Uaychai'
FROM Person.Person;


--668b | CASE...WHEN...THEN | 2022-10-15 | Uaychai Chotjaratwanich
--1	    Northwest	    US	North America
--2	    Northeast	    US	North America
--3	    Central	        US	North America
--4	    Southwest	    US	North America
--5	    Southeast	    US	North America
--6	    Canada	        CA	North America
--7	    France	        FR	Europe
--8	    Germany	        DE	Europe
--9	    Australia	    AU	Pacific
--10	United Kingdom	GB	Europe
SELECT SalesOrderID, TerritoryID, 
       CASE TerritoryID 
          WHEN 1 THEN 'North America' 
          WHEN 2 THEN 'North America'
          WHEN 3 THEN 'North America'
          WHEN 4 THEN 'North America'
          WHEN 5 THEN 'North America'
          WHEN 6 THEN 'North America'
          WHEN 7 THEN 'Europe'
          WHEN 8 THEN 'Europe'
          WHEN 9 THEN 'Pacific'
          ELSE 'Europe'
       END AS Region1,
       CASE  
          WHEN TerritoryID BETWEEN 1 AND 6 THEN 'North America' 
          WHEN TerritoryID IN (7,8,10) THEN 'Europe'
          ELSE 'Pacific'
       END AS Region2
FROM Sales.SalesOrderHeader;


--e072 | How it work | 2022-10-15 | Uaychai Chotjaratwanich
SELECT FirstName, LastName AS [Last Name], 
       FirstName + LastName, 
       LEFT(FirstName,3),
       FirstName + 'Uaychai'
FROM Person.Person;