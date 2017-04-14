
/*Write a query to return the product ID of each product, together with the product name formatted as upper case and a column named ApproxWeight with the weight of each product rounded to the nearest whole unit. Make sure to use the aliases provided.

SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight
FROM SalesLT.Product; */

/*Extend your query to include columns named SellStartYear and SellStartMonth containing the year and month in which AdventureWorks started selling each product. The month should be displayed as the month name (e.g. 'January'). Make sure to use the aliases provided.

SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       YEAR(SellStartDate) as SellStartYear, DATENAME(m,SellStartDate) as SellStartMonth
FROM SalesLT.Product;  */

/* Extend your query to include a column named ProductType that contains the leftmost two characters from the product number. Make sure to use the aliases provided.

SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       YEAR(SellStartDate) as SellStartYear, DATENAME(m, SellStartDate) as SellStartMonth,
       LEFT(ProductNumber, 2) AS ProductType
FROM SalesLT.Product; */

/* Extend your query to filter the product returned so that only products with a numeric size are included. Make sure to use the aliases provided. 

SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       YEAR(SellStartDate) as SellStartYear, DATENAME(m, SellStartDate) as SellStartMonth,
       LEFT(ProductNumber, 2) AS ProductType
FROM SalesLT.Product
WHERE ISNUMERIC(Size) = 1; */

/* Write a query that returns a list of company names with a ranking of their place in a list of highest TotalDue values from the SalesOrderHeader table. Make sure to use the aliases provided. 

SELECT c.CompanyName, soh.TotalDue AS Revenue,
       RANK() OVER (ORDER BY soh.TotalDue DESC) AS RankByRevenue
FROM SalesLT.SalesOrderHeader AS SOH
JOIN SalesLT.Customer AS C
ON SOH.CustomerID = C.CustomerID; */

/* Write a query to retrieve a list of the product names and the total revenue calculated as the sum of the LineTotal from the SalesLT.SalesOrderDetail table, with the results sorted in descending order of total revenue. Make sure to use the aliases provided.

SELECT p.Name, SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON P.ProductID = sod.ProductID
GROUP BY P.Name
ORDER BY TotalRevenue DESC;  */

/* Modify the previous query to include sales totals for products that have a list price of more than 1000. Make sure to use the aliases provided. 
SELECT Name, SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON SOD.ProductID = P.ProductID
WHERE p.ListPrice > 1000
GROUP BY P.Name
ORDER BY TotalRevenue DESC;  */

/* Modify the previous query to only include products with total sales greater than 20000. Make sure to use the aliases provided. 

SELECT Name, SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P ON SOD.ProductID = P.ProductID
WHERE P.ListPrice > 1000
GROUP BY P.Name
HAVING SUM(LineTotal) > 20000
ORDER BY TotalRevenue DESC
; */


















