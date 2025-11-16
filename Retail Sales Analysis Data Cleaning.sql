-- SQL Retail Sales Analysis (SQL Project 1)
CREATE DATABASE SQL_Project_1_Retail_Sales_Analysis;

USE SQL_Project_1_Retail_Sales_Analysis;

-- Creating the tables
CREATE TABLE Tb_Retail_Sales_Data (
	Transaction_Id INT PRIMARY KEY,
	Sale_Date DATE,
	Sale_Time TIME,
	Customer_Id INT,
	Gender VARCHAR(15),
	Age INT,
	Category VARCHAR(30),
	Quantity INT,
	Price_Per_Unit FLOAT,
	Cogs FLOAT,
	Total_Sale FLOAT
)
-- Check Dataset
SELECT * FROM Tb_Retail_Sales_Data;

-- Renaming Quantity Column Before Data Import for Ease.
EXEC sp_rename 'Tb_Retail_Sales_Data.Quantity', 'Quantiy', 'COLUMN';

-- Data Import
BULK INSERT Tb_Retail_Sales_Data
FROM 'D:\Career\Projects\Retail Sales SQL Project by Zero Analyst\SQL - Retail Sales Analysis_utf .csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- CSV delimiter
    ROWTERMINATOR = '\n',      -- End of line
    TABLOCK
);

-- Renaming Quantity Column After Data Import for Accuracy.
EXEC sp_rename 'Tb_Retail_Sales_Data.Quantiy', 'Quantity', 'COLUMN';

-- Fixing time which was showing like '19:10:00.0000000' after importing.
ALTER TABLE Tb_Retail_Sales_Data
ALTER COLUMN Sale_Time TIME(0);

-- Identifying NULL Values
SELECT * 
FROM Tb_Retail_Sales_Data
WHERE Sale_Date IS NULL
	OR Sale_Time IS NULL
	OR Customer_Id IS NULL
	OR Gender IS NULL
	OR Age IS NULL
	OR Category IS NULL
	OR Quantity IS NULL
	OR Price_Per_Unit IS NULL
	OR Cogs IS NULL
	OR Total_Sale IS NULL;

-- Deleting NULL Values
DELETE FROM Tb_Retail_Sales_Data
WHERE Sale_Date IS NULL
	OR Sale_Time IS NULL
	OR Customer_Id IS NULL
	OR Gender IS NULL
	OR Age IS NULL
	OR Category IS NULL
	OR Quantity IS NULL
	OR Price_Per_Unit IS NULL
	OR Cogs IS NULL
	OR Total_Sale IS NULL;