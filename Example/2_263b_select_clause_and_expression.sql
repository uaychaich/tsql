--c565 | SELECT Clause Structure | 2022-10-15 | Uaychai Chotjartwanich
--SELECT Expression1, Expression2, Expression3, ...


--5ac5 | Literal | 2022-10-15 | Uaychai Chotjaratwanich
SELECT 25, 25.2, 'Uaychai', N'อวยชัย', '2022-10-15', '2022-10-15T14:01:53';


--9285 | Column | 2022-10-15 | Uaychai Chotjaratwanich
SELECT FirstName, LastName FROM Person.Person;


--b647 | Function | 2022-10-15 | Uaychai Chotjaratwanich
SELECT GETDATE(), YEAR('2022-10-15');


--2f66 | Variable | 2022-10-15 | Uaychai Chotjaratwanich
DECLARE @Var INT = 5;
SELECT @Var; 


--5930 | Sub Query | 2022-10-15 | Uaychai Chotjaratwanich
SELECT (SELECT 'Uaychai');


--a8be | Formula | 2022-10-15 | Uaychai Chotjaratwanich
DECLARE @Var2 VARCHAR(50) = 'Uaychai';
SELECT FirstName + ' Uaychai' + @Var2 FROM Person.Person;


--35b4 | Formula + Concat String Operator | 2022-10-15 | Uaychai Chotjaratwanich
SELECT 'Uaychai' + 'Chotjaratwanich';


--f321 | Formula + Arithmetic Operator | 2022-10-15 | Uaychai Chotjaratwanich
SELECT 5+3, 5-3, 5*3, 5%3, 5/3, 5.0/3;


--a852 | Formula + Compare Operator | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF(5>3,1,0), IIF('U' < 'Uaychai',1,0); 


--268d | Formula + Logical Operator | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF(5>3 AND 4<3,1,0), IIF(5>3 OR 4<3,1,0);


--40cb | Formula + Special Operator for String | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF('Uaychai' LIKE 'U%',1,0);


--0251 | Formula + Special Operator for Numeric1 | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF(5 BETWEEN 1 AND 10,1,0), IIF(5 >=1 AND 5<=10,1,0);


--3afa | Formula + Special Operator for Numeric2 | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF (5 IN (1,5,9),1,0), IIF(5=1 OR 5=5 OR 5=9,1,0);


--978a | NULL | 2022-10-15 | Uaychai Chotjaratwanich
SELECT NULL;


--978a | Compare NULL | 2022-10-15 | Uaychai Chotjaratwanich
SELECT IIF(NULL = NULL,1,0), IIF(NULL IS NULL,1,0), IIF(NULL IS NOT NULL,1,0);