-- What is the title and age of each of the employees as of today?
USE Northwind_2023;
GO

SELECT CONCAT(emp.FirstName, ' ', emp.LastName) as 'Employee'
	  ,emp.Title
	  ,DATEDIFF(yy, emp.BirthDate, CAST(GETDATE() as DATE)) as 'Age'
FROM dbo.Employees emp
;
