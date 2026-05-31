-- Superstore Sales Analysis SQL File

-- 1. Total Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 2. Total Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 3. Top 10 Customers by Sales
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- 6. Top 5 Products by Profit
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;

-- 7. Category-wise Profit Margin
SELECT 
    Category,
    ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Profit_Margin_Percentage
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin_Percentage DESC;

-- 8. Segment-wise Sales
SELECT Segment, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 9. Loss Making Products
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;

-- 10. State-wise Sales
SELECT State, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;
