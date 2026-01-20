🏦 Bank Loan Analysis & Financial Reporting
📌 Project Overview
This project is a comprehensive end-to-end data analysis solution designed to monitor and assess a bank's lending activities. By leveraging SQL for data extraction and Power BI for visualization, the project provides insights into loan applications, funding, repayments, and borrower risk profiles.

The goal is to help financial institutions differentiate between "Good" and "Bad" loans, track MTD (Month-To-Date) performance, and understand the impact of borrower demographics on loan repayment.

📂 Project Structure
bank loan.sql: Comprehensive SQL script containing data cleaning, KPI calculations, and complex queries.

Bank Loan Analysis.pbix: Interactive 3-page Power BI dashboard (Summary, Overview, Details).

financial_loan.csv: The raw dataset containing borrower and loan-level information.

BANK LOAN REPORT QUERY DOCUMENT.docx: Documentation of all SQL business requirements and logic.

Domain Knowledge & Terminologies.docx: Guidance on banking KPIs like DTI, Grade, and Loan Status.

🛠️ Technical Workflow
1. Data Analysis with SQL
Before visualization, I performed deep-dive analysis using SQL to ensure data integrity and calculate core business metrics:

KPI Tracking: Calculated Total Loan Applications, Total Funded Amount, and Total Amount Received.

MTD & MoM Analysis: Used SQL functions to track Month-to-Date and Month-over-Month changes.

Portfolio Health: Categorized loans into Good Loans (Fully Paid & Current) vs. Bad Loans (Charged Off).

Granular Grouping: Aggregated data by State, Term, Employee Length, and Loan Purpose.

2. Data Visualization (Power BI)
Created a dynamic 3-page report to provide both executive summaries and granular details:

Dashboard 1: Summary: Key performance indicators with MoM growth trends and health indicators for "Good" and "Bad" loans.

Dashboard 2: Overview: Interactive charts showing regional performance (Map), seasonal trends (Line Chart), and borrower segments (Donut/Bar charts).

Dashboard 3: Details: A drill-through table for a comprehensive view of all loan metrics.

📊 Key Business Metrics
Total Applications: 38.6K (MTD: 4.3K, +6.9% MoM)

Total Funded Amount: $435.8M

Total Amount Received: $473.1M

Average Interest Rate: 12.0%

Average DTI (Debt-to-Income): 13.3%

Good Loan Percentage: 86.2%

🚀 Key Learning & Skills
Advanced SQL: CTEs, Window Functions, and Date Manipulations.

Power BI / DAX: Creating complex measures, dynamic slicers, and page navigation.

Financial Domain Knowledge: Understanding of credit risk, DTI ratios, and loan provisioning.

Data Storytelling: Translating technical data into business-ready visual insights.

📥 How to Run
Database: Import financial_loan.csv into your SQL Server and run bank loan.sql to see the analytical queries.

Dashboard: Open Bank Loan Analysis.pbix in Power BI Desktop to interact with the visualizations.
