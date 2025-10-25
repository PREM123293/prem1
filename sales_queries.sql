-- Retail Sales Analysis SQL Script
-- Dataset: premsql.csv (Sample Superstore-like data)

-- 1️⃣ Total Sales and Profit by Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 2️⃣ Top 10 Products by Sales
SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 3️⃣ Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales,
    ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM superstore
GROUP BY Month
ORDER BY Month;

-- 4️⃣ Sales by Region
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5️⃣ Profit Margin by Category
SELECT 
    Category,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;
