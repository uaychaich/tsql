--93ad | UNION | 2022-10-21 | Uaychai Chotjaratwanich
SELECT BusinessEntityID, Name, 'Store' AS [Type]  FROM Sales.Store
UNION
SELECT BusinessEntityID, Name, 'Vendor' FROM Purchasing.Vendor
ORDER BY BusinessEntityID;