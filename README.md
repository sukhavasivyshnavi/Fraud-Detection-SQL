# Fraud Detection using Advanced SQL

This project demonstrates how **Advanced SQL** can be used to detect patterns of potentially fraudulent transactions based on business logic and data analysis techniques. It includes data exploration, anomaly detection, and risk flagging using SQL queries.

## Dataset

The dataset contains 1000 financial transactions with the following fields:

- `transaction_id`: Unique identifier for each transaction
- `customer_id`: Unique identifier for each customer
- `transaction_amount`: Amount involved in the transaction
- `transaction_date`: Date and time of the transaction
- `transaction_type`: Type of transaction (e.g., purchase, withdrawal)
- `merchant_category`: Category of merchant involved (e.g., grocery, electronics)
- `location`: City where the transaction took place

## Objective

To identify transactions that may indicate potential fraud by analyzing:

- Abnormally high transaction amounts
- Unusual transaction frequencies
- Repeated high-risk categories
- Transactions from geographically distant locations within short time spans

## SQL Tasks Performed

1. **Table Creation**: Defined schema and created the `transactions` table.
2. **Data Insertion**: Loaded 1000 rows of synthetic data into the table.
3. **Data Exploration**: Performed summary statistics, row counts, and initial scans.
4. **Fraud Detection Queries**:
   - Transactions exceeding a specified amount threshold
   - Same customer transacting in multiple cities in a short time window
   - Unusual purchase frequencies
   - Flagged high-risk categories (e.g., jewelry, electronics)
   - Customers with back-to-back withdrawals

## Tools Used

- MySQL Workbench
- SQL (DML, DDL, filtering, aggregation, window functions)

## How to Run

1. Clone or download this repository
2. Import the dataset `transactions_dataset.csv` into MySQL
3. Run the SQL scripts provided in `fraud_detection_queries.sql`
4. Analyze the output of each query to review the suspicious patterns

## Files Included

- `README.md` – Project overview and details
- `financial_transactions_dummy.csv` – Sample transaction data
- `fraud_detection_queries.sql` – SQL queries for detection and analysis

## Credits

This project is self-built using synthetic data. Designed as a portfolio project to demonstrate **Advanced SQL** data analysis and fraud detection skills.

## Author

S. Vyshnavi  
Email:sukhavasivyshnavi17@gmail.com

