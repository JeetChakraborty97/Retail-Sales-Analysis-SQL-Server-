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

### 1) Database Setup

Database Creation: The project starts by creating a database named SQL_Project_1_Retail_Sales_Analysis.

Table Creation: A table named Tb_Retail_Sales_Data is created to store the sales data.

<img width="587" height="367" alt="image" src="https://github.com/user-attachments/assets/7036a421-e255-4799-83df-1b6080146d1d" />

### 2) Data Cleaning & Exploration

A Column name irregularity had been found and was dealt with.
Time values were formatted in the proper manner.

<img width="1081" height="474" alt="image" src="https://github.com/user-attachments/assets/315a1f71-3ae5-46b8-91c4-d3035f9784cd" />

NULL Values had been found and were dealt with.

<img width="669" height="553" alt="image" src="https://github.com/user-attachments/assets/14f239fa-9720-4b4a-8a9e-0cdb1ad07654" />

### 3) Data Analysis & Findings

The following SQL queries were developed to answer specific business questions:

1. How Many Sales We Have?

<img width="423" height="92" alt="image" src="https://github.com/user-attachments/assets/7c8c7f82-0155-420a-b97c-960905d615d1" />

2. How Many Unique Customers We Have?

<img width="695" height="87" alt="image" src="https://github.com/user-attachments/assets/d72f7b13-b34a-4ff3-bed2-b8f229c961a9" />

3. 
