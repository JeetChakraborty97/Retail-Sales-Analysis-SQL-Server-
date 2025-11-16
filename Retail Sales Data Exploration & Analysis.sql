					-- Data Exploration
-- To Check
SELECT *
FROM Tb_Retail_Sales_Data;

-- Q1. How Many Sales We Have?
SELECT
	COUNT (*) AS Total_Sale
FROM Tb_Retail_Sales_Data;

-- Q2. How Many Unique Customers We Have?
SELECT
	COUNT(DISTINCT Customer_Id) AS Total_Distinct_Customers
FROM Tb_Retail_Sales_Data;

-- Q3. How Many Categories We Have?
SELECT
	DISTINCT Category AS Total_Distinct_Categories
FROM Tb_Retail_Sales_Data;

					-- Data Analysis & Business Key Problems & Answers.

-- Q1. Write an SQL query to retrieve all columns for sales made on '2022-11-05'.
SELECT *
FROM Tb_Retail_Sales_Data
WHERE Sale_Date = '2022-11-05';

/* Q2. Write an SQL query to retrieve all transactions where the category is 'Clothing'
		and the the quantity sold is equal to or more than 4 in the month of Nov-2022.
*/
SELECT 
    Transaction_Id,
    Category,
    Quantity,
    Sale_Date
FROM Tb_Retail_Sales_Data
WHERE Category = 'Clothing'
  AND Quantity >= 4
  AND YEAR(Sale_Date) = 2022
  AND MONTH(Sale_Date) = 11;

-- Q3. Write an SQL query to calculate the total sales (Total_Sale) for each category.
SELECT
	Category,
	COUNT(*) AS Total_Orders,
	SUM(Total_Sale) AS Total_Sales
FROM Tb_Retail_Sales_Data
GROUP BY Category;

-- Q4, Write an SQL query to find the average age of customers who purchased items from the 'Beauty' category.
SELECT
	AVG(Age) AS AVG_Age
FROM Tb_Retail_Sales_Data
WHERE Category = 'Beauty';

-- Q5. Write an SQL query to find all transactions where the total sale is greater than 1000.
SELECT *
FROM Tb_Retail_Sales_Data
WHERE Total_Sale > 1000;

/* Q6. Write an SQL query to find the total number of transactions (Transaction_Id)
		made by each gender in each category.
*/
SELECT Category,
	Gender,
	COUNT(Transaction_Id) AS Number_of_Ttransactions
FROM Tb_Retail_Sales_Data
GROUP BY Category,
	Gender
ORDER BY Category DESC,
	Gender DESC;

-- Q7. Write an SQL query to find the average sale for each month. Find out the best selling month in each year.
WITH MonthlySales AS (
    SELECT 
        YEAR(Sale_Date) AS Sale_Year,
        MONTH(Sale_Date) AS Sale_Month,
        ROUND(AVG(Total_Sale), 2) AS AVG_Sales
    FROM Tb_Retail_Sales_Data
    GROUP BY YEAR(Sale_Date),
        MONTH(Sale_Date)
),
RankedSales AS (
    SELECT 
        Sale_Year,
        Sale_Month,
        AVG_Sales,
        RANK() OVER (PARTITION BY Sale_Year ORDER BY AVG_Sales DESC) AS Rnk
    FROM MonthlySales
)
SELECT 
    Sale_Year,
    Sale_Month,
    AVG_Sales
FROM RankedSales
WHERE Rnk = 1;

-- Q8. Write an SQL query to find the top 5 customers based on higest total sales.
SELECT TOP 5
    Customer_Id,
    SUM(Total_Sale) AS Total_Sales
FROM Tb_Retail_Sales_Data
GROUP BY Customer_Id
ORDER BY Total_Sales DESC;

-- Q9. Write an SQL Query to find out the number of unique customers who purchased items from each category.
SELECT
    Category,
    COUNT(DISTINCT Customer_Id) AS Count_of_Unique_Customers
FROM Tb_Retail_Sales_Data
GROUP BY Category;

/* Q10. Write an SQL query to create each shift and number of orders
(Example: Morning <= 12, Afternoon Between 12 and 17, Evening > 17)
*/
WITH ShiftedSales AS (
    SELECT 
        Sale_Time,
        CASE
            WHEN DATEPART(HOUR, Sale_Time) < 12 THEN 'Morning'
            WHEN DATEPART(HOUR, Sale_Time) BETWEEN 12 AND 17 THEN 'Afternoon'
            ELSE 'Evening'
        END AS Shift
    FROM Tb_Retail_Sales_Data
)
SELECT 
    Shift,
    COUNT(*) AS NumberOfOrders
FROM ShiftedSales
GROUP BY Shift;

                                                        ---------END-----------