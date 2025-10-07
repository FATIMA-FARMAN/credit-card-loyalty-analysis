-- top_credit_utilization.sql
-- Customers with highest utilization (spend to limit)
SELECT CUST_ID, SPEND_TO_LIMIT, SPEND, CREDIT_LIMIT
FROM customer_dataset_engineered
ORDER BY SPEND_TO_LIMIT DESC
LIMIT 50;