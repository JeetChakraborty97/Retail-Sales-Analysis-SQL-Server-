# Retail-Sales-Analysis-SQL-Server

# Background

Novus Retail Pvt. Ltd., a mid-sized multi-category retail company (fictional), has provided its complete 2022 transaction-level sales dataset for analysis. The dataset includes fields such as Transaction_Id, Sale_Date, Sale_Time, Customer_Id, Gender, Age, Category, Quantity, Price_Per_Unit, Cogs, and Total_Sale. However, the raw dataset may contain duplicates, null values, inconsistent data types, and formatting issues that must be addressed before any meaningful analysis can be performed. 

To ensure accuracy and reliability of insights, the project requires extensive data cleaning, data type corrections, duplicate handling, and null-treatment in SQL before moving into exploration and business analysis.

# Objective / Problem Statement 

The goal of this project is to clean, transform, and analyse Novus Retail’s 2022 sales dataset to uncover insights about revenue performance, customer demographics, high-value segments, product/category trends, and operational patterns. 

These insights will help Novus Retail: 

• Optimise inventory planning, 

• Identify high-performing and underperforming categories, 

• Strengthen customer-based targeting strategies, and 

• Improve overall sales and operational decision-making.

# Project Structure

### Database Setup

Database Creation: The project starts by creating a database named SQL_Project_1_Retail_Sales_Analysis.

Table Creation: A table named Tb_Retail_Sales_Data is created to store the sales data.

'''sql
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
'''

### Data Cleaning & Exploration
