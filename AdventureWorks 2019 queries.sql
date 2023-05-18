-- 1. Write a query to return the average weight of all touring bikes sold by Adventure works cycles  that costs more than $2,300.  
--Use the productsubcategory table to determine how you should filter these products

SELECT AVG(p.Weight) AS AverageWeight
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory psc ON p.ProductSubcategoryID = psc.ProductSubcategoryID
WHERE psc.Name = 'Touring Bikes' 
  AND sod.UnitPrice > 2300;

  --The query above joins the SalesOrderDetail table with the Product and ProductSubcategory tables using their foreign key relationships. 
  --It filtered the products by the product subcategory name "Touring Bikes" and the unit price being greater than $2,300. 
  --Finally, it calculates the average weight of the selected products using the AVG function and aliases it as "AverageWeight."


  -- 2. Write a query that returns  a list of product subcategories and related products that don't have any sales order detail records.  
  -- Include 2 columns, including subcategory name labeled 'subcategoryname' and the product name labeled 'ProductName'

SELECT psc.Name AS subcategoryname, p.Name AS ProductName
FROM Production.ProductSubcategory psc
JOIN Production.ProductCategory c ON psc.ProductCategoryID = c.ProductCategoryID
JOIN Production.Product p ON psc.ProductSubcategoryID = p.ProductSubcategoryID
LEFT JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE sod.SalesOrderDetailID IS NULL
ORDER BY subcategoryname, ProductName;

-- I started by creating columns with alias 'psc' for the product subcategory table and 'p'for the Product name table.
-- I then went ahead to select the columns psc.Name and p.Name for the subcategory name and product name.
-- I then joined the Production.ProductSubcategory table with the Production.ProductCategory table using the ProductCategoryID column to get the subcategory information.
-- After which i then joined the Production.Product table with the Production.ProductSubcategory table using the ProductSubcategoryID column to get the product information.
-- Next, i performed a LEFT JOIN with the Sales.SalesOrderDetail table using the ProductID column to check if there are any sales order detail records for each product. 
-- I use the sod.SalesOrderDetailID IS NULL condition to filter out the products that have sales order detail records.
--Finally, i ordered the result by the 'subcategoryname' and 'productname' for better readability.


-- 3. write a query that returns product and product subcategory.
-- Select the name column and create Alias for it called 'subcategory' for the product subcategory table.  
-- For the product table, select name column and create an alias for it called Product name, also select the list price column from this table.

SELECT
  p.Name AS "Product name",
  p.ListPrice,
  ps.Name AS subcategory
FROM
  Production.Product p
JOIN
  Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID;

  -- This query retrieves the "Name" column from the "Production.Product" table, aliasing it as "Product name". 
  -- It also retrieves the "ListPrice" column from the same table. 
  -- Additionally, it retrieves the "Name" column from the "Production.ProductSubcategory" table, aliasing it as "subcategory". 
  -- I then used a JOIN statement to connect the two tables based on the "Production.ProductSubcategoryID" column.

  -- 4. Write a query to find out how many products that has a product with a list price greater than 3000.

SELECT COUNT(*) AS product_count
FROM Production.Product
WHERE ListPrice > 3000;

-- This query selected the count of all rows (COUNT(*)) from the "Production.Product" table where the "ListPrice" column is greater than 3000. 
-- The result will count the number of products that meet this condition, and i gave it an alias as "product_count".