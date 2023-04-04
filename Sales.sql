use project;
select * from sales;

/*
Total sales amount for each year
*/
SELECT Year, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Year;

/*
Total sales amount for each quarter 
*/
SELECT Year, Quarter, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Year, Quarter;

/*
Total sales amount for each month and year
*/
SELECT Year, Month, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Year, Month;

/*
Top 10 customers based on their total sales amount
*/
SELECT CustomerKey, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY CustomerKey
ORDER BY TotalSales DESC
LIMIT 10;

/*
Total sales amount for each product
*/
SELECT Productkey, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Productkey;

/*
Total number of orders and the total sales amount for each customer
*/
SELECT CustomerKey, COUNT(*) as TotalOrders, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY CustomerKey;

/*
Total sales amount and the profit for each order 
*/
SELECT SalesOrderNumber, SalesAmount, Profit
FROM sales;

/*
Total sales amount for each sales territory and year
*/
SELECT SalesTerritoryKey, Year, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY SalesTerritoryKey, Year;

/*
The average unit price and the total number of orders for each product
*/
SELECT Productkey, AVG(UnitPrice) as AvgUnitPrice, COUNT(*) as TotalOrders
FROM sales
GROUP BY Productkey;

/*
Total sales amount for each customer and year
*/
SELECT CustomerKey, Year, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY CustomerKey, Year;

/*
Total sales amount and the total profit for each product and year
*/
SELECT Productkey, Year, SUM(SalesAmount) as TotalSales, SUM(Profit) as TotalProfit
FROM sales
GROUP BY Productkey, Year;

/*
The number of orders and the total sales amount for each day
*/
SELECT Date, COUNT(*) as TotalOrders, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Date;

/*
Total sales amount and the profit for each order for a specific customer
*/
SELECT SalesOrderNumber, SalesAmount, Profit
FROM sales 
where customerKey = customerkey;

/*
Total sales amount for each product and sales territory
*/
SELECT Productkey, SalesTerritoryKey, SUM(SalesAmount) as TotalSales
FROM sales
GROUP BY Productkey, SalesTerritoryKey;

/*
Total sales amount and the profit for each order placed in a specific year
*/
SELECT SalesOrderNumber, SalesAmount, Profit
FROM sales
WHERE Year = '2012';


