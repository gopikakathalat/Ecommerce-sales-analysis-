-- Sales by Sub-Category
SELECT `Sub-Category`, SUM(Sales) AS total_sales
FROM `cedar-router-440902-r2.storedata.productdata`
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;

-- Profit by Sub-Category
SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM `cedar-router-440902-r2.storedata.productdata`
GROUP BY `Sub-Category`
ORDER BY total_profit DESC;

-- Discount vs Profit
SELECT 
  CASE 
    WHEN Discount <= 0.1 THEN 'Low Discount'
    WHEN Discount <= 0.3 THEN 'Medium Discount'
    ELSE 'High Discount'
  END AS discount_level,
  AVG(Profit) AS avg_profit
FROM `cedar-router-440902-r2.storedata.productdata`
GROUP BY discount_level
ORDER BY avg_profit DESC;

-- Profit by Region
SELECT `Region`, SUM(Profit) AS total_profit
FROM `cedar-router-440902-r2.storedata.productdata`
GROUP BY `Region`
ORDER BY total_profit DESC;
