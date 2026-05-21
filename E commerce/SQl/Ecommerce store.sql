--# Total no.of unique transactions

SELECT COUNT(DISTINCT InvoiceNo) AS 'Total number of transaction' 
FROM dbo.cleaned_ecommerce_data;

--# Total Revenue generated

SELECT FORMAT(SUM(Revenue), 'C') AS 'TotalRevenue'
FROM dbo.cleaned_ecommerce_data;

--# Total no.of unique customers

SELECT FORMAT(COUNT(DISTINCT CustomerID), 'N2') AS 'Number of Unique Customers'
FROM dbo.cleaned_ecommerce_data;

--# Top 10 products by revenue

SELECT TOP 10
    Description,
    FORMAT(SUM(Revenue), 'C', 'en-US') AS TotalRevenue
FROM dbo.cleaned_ecommerce_data
GROUP BY Description
ORDER BY SUM(Revenue) DESC;


--# Top Revenue by Country


SELECT 
    Country AS 'Country',
    FORMAT(SUM(Revenue), 'C', 'en-US') AS 'Total Revenue'
FROM dbo.cleaned_ecommerce_data
GROUP BY Country
ORDER BY Country;



--# Monthly Sales Trend

SELECT 
  Year,
  Month,
  FORMAT(SUM(Revenue), 'C', 'en-US') AS 'Total Revenue'
FROM dbo.cleaned_ecommerce_data
Group BY Year, Month
ORDER BY Year, Month;


--# Monthly Sales Trend

SELECT 
  DISTINCT CustomerID,
  Month,
  FORMAT(SUM(Revenue), 'C', 'en-US') AS 'Total Revenue'
FROM dbo.cleaned_ecommerce_data
Group BY Year, Month
ORDER BY Year, Month;


--# Customers with more than 1 purchase

SELECT
    CustomerID AS 'Repeat Customers',
    COUNT(DISTINCT InvoiceNo) AS NumberOfPurchases
FROM dbo.cleaned_ecommerce_data
GROUP BY CustomerID
HAVING COUNT(DISTINCT InvoiceNo) > 1
ORDER BY NumberOfPurchases DESC;



--# To calculate the Average order value

SELECT 
    FORMAT(AVG(Revenue), 'C', 'en-US') AS 'Average Order value'
FROM dbo.cleaned_ecommerce_data;


--# Top 10 customers by revenue

SELECT TOP 10
    CustomerID,
    FORMAT(SUM(Revenue), 'C', 'en-US') AS TotalRevenue
FROM dbo.cleaned_ecommerce_data
GROUP BY CustomerID
ORDER BY SUM(Revenue) DESC;
