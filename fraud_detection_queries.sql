USE fraud_detection;
-- Section 1: Creating Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_amount DECIMAL(10,2),
    transaction_date DATETIME,
    transaction_type VARCHAR(20),
    merchant_category VARCHAR(50),
    location VARCHAR(50)
);
-- Section 2: Data Inserted via File Upload
-- Section 3: Fraud Detection Queries
select * from transactions limit 10;
select * from transactions where transaction_amount > 100000;
select customer_id, date(transaction_date) as txn_date, COUNT(*) as txn_count, SUM(transaction_amount) as total_spent
from transactions where transaction_amount > 50000
group by customer_id, date(transaction_date)
having txn_count > 1;
select * from transactions  where merchant_category in ('jewelery','electronics') and 
transaction_amount > 50000;
with customer_txn as (
    select customer_id,
           transaction_date,
           lag (transaction_date) over (partition by  customer_id order by  transaction_date) as previous_txn
    from transactions
)
select customer_id, COUNT(*) as rapid_txns
from customer_txn
where timestampdiff(minute, previous_txn, transaction_date) <= 30
group by customer_id
having rapid_txns > 5;
select customer_id, 
       SUM(case when transaction_amount > 100000 then 10 else 0 end) as fraud_score
from transactions
group by customer_id
having fraud_score > 20;
select customer_id, location, COUNT(*) as location_txns
from transactions
group by customer_id, location
having location_txns > 5;
select * from transactions 
where hour(transaction_date) between 0 and 6;




