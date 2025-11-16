# Retail-Sales-Analysis-SQL-Server

![Retail Sales Analysis LinkedIn Cover Post](https://github.com/user-attachments/assets/1bd427b9-20b1-4ef6-b859-e77525c4f397)

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

### 3) Data Analysis

The following SQL queries were developed to answer specific business questions:

1. How Many Sales We Have?

<img width="423" height="92" alt="image" src="https://github.com/user-attachments/assets/7c8c7f82-0155-420a-b97c-960905d615d1" />

2. How Many Unique Customers We Have?

<img width="695" height="87" alt="image" src="https://github.com/user-attachments/assets/d72f7b13-b34a-4ff3-bed2-b8f229c961a9" />

3. How Many Categories We Have?

<img width="633" height="93" alt="image" src="https://github.com/user-attachments/assets/44f6c49a-7088-4ea1-a818-63fa3689f2c9" />

4. Write an SQL query to retrieve all columns for sales made on '2022-11-05'.

<img width="885" height="127" alt="image" src="https://github.com/user-attachments/assets/b595e609-82ef-4367-924e-c3ae1ec5007c" />

5. Write an SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is equal to or more than 4 in the month of Nov-2022.

<img width="963" height="271" alt="image" src="https://github.com/user-attachments/assets/3da02452-4e10-4cc0-a682-3ac9c8caf75f" />

6. Write an SQL query to calculate the total sales (Total_Sale) for each category.

<img width="919" height="149" alt="image" src="https://github.com/user-attachments/assets/b53a2909-c584-4e83-a89c-8fe57b275dab" />

7. Write an SQL query to find the average age of customers who purchased items from the 'Beauty' category.

<img width="1163" height="105" alt="image" src="https://github.com/user-attachments/assets/62fa6232-388c-4196-a304-b1b2bc523b6d" />

8. Write an SQL query to find all transactions where the total sale is greater than 1000.

<img width="985" height="91" alt="image" src="https://github.com/user-attachments/assets/2875cabf-bad2-475b-b7aa-536126625d99" />

9. Write an SQL query to find the total number of transactions (Transaction_Id) made by each gender in each category.

<img width="914" height="242" alt="image" src="https://github.com/user-attachments/assets/db53ed50-2661-439a-8b14-86bd230548e9" />

10. Write an SQL query to find the average sale for each month. Find out the best selling month in each year.

<img width="1112" height="488" alt="image" src="https://github.com/user-attachments/assets/5f4d2b8b-99b2-43e5-a5e1-f4dc1a84c602" />

11. Write an SQL query to find the top 5 customers based on higest total sales.

<img width="915" height="152" alt="image" src="https://github.com/user-attachments/assets/06f40267-078c-4ca0-9fdd-e9dc6c0b1733" />

12. Write an SQL Query to find out the number of unique customers who purchased items from each category.

<img width="1110" height="126" alt="image" src="https://github.com/user-attachments/assets/b0cf2a9e-856f-4cfc-9e1c-3d119f0d9021" />

13. Write an SQL query to create each shift and number of orders (Example: Morning <= 12, Afternoon Between 12 and 17, Evening > 17)

<img width="1093" height="374" alt="image" src="https://github.com/user-attachments/assets/8c84614b-dd33-4c02-93d8-3fc45af6cae7" />

# Key Findings

•	Revenue concentration & top categories: A small number of categories contribute the majority of revenue. These are priority areas for inventory and promotional focus.

•	Seasonality & monthly peaks: Sales show clear month-to-month variation; the SQL time-series queries identify peak months and months with weaker demand — useful for seasonal stocking and promotions.

•	Time-of-day & shift patterns: Transaction counts and revenue cluster in distinct shift buckets (morning / afternoon / evening) — operational staffing and fulfilment capacity should align with these peaks.

•	Customer value distribution: A Pareto-like distribution appears: the top X% of customers generate disproportionate revenue. These customers are candidates for loyalty and retention programs.

•	Demographic preferences: Age groups and gender segments display different category preferences and average spends. Use these insights to sharpen marketing creatives and audience targeting.

•	High-value orders & exceptions: The dataset contains a measurable count of high-value transactions; these may represent bulk/wholesale buyers or require fraud/fulfilment attention.

# Business implications & recommended actions (quick wins → strategic)

### Quick wins (immediate, high ROI)

1.	Prioritise inventory for the top 3 revenue-driving categories (as identified by the SQL category ranking). Ensure safety stock before identified peak months.

2.	Target top customers (top 5–10%) with retention offers — small increases in retention among top customers will disproportionately increase revenue.

3.	Operational capacity alignment — schedule fulfilment and staffing to match the shift/time-of-day revenue peaks found in the analysis.

### Medium-term (process + policy changes)

4. Fix pricing / data-entry errors where Total_Sale mismatches appear — implement a validation rule at data intake (or mark and exclude such rows from reporting until resolved).

5. Run occasion-based promotions ahead of months identified as seasonal peaks; use A/B tests to measure lift.

6. Introduce high-value-customer playbook (personalised offers, priority fulfilment, account manager for B2B-like buyers).

### Strategic (longer-term)

7. SKU-level margin tracking (augment dataset with SKU and cost fields) to move from revenue-only to profitability optimization (similar approach suggested in the Ecommerce reference). 

8. Automate data pipeline & dashboard refresh (materialized views for heavy aggregates, scheduled SQL jobs) so leadership has timely insights.

9. Forecasting and replenishment models using the monthly trends detected in the SQL time-series outputs.

# Deliverables produced (and where to find them)

•	Data cleaning SQL script — Retail Sales Analysis Data Cleaning.sql (duplicates removal, null handling, type corrections, derived fields).

•	Exploratory & analytic SQL script — Retail Sales Data Exploration & Analysis.sql (10 questions implemented as queries / views; produce the KPIs listed above).

# Conclusion

The SQL work you completed transforms noisy transactional data into a repeatable analytical pipeline that answers the project’s core business questions: who buys, what they buy, when they buy, and which categories drive revenue. Cleaning exposed key data-quality gaps (duplicates and mismatches) that were resolved or flagged, and the 10 analytic queries produce the KPIs required for inventory, marketing, and finance decisions. Implementing the recommended quick wins and automating the pipeline will convert these insights into measurable revenue and margin improvements.
