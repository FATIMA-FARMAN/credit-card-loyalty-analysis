-- repayment_behavior.sql
-- Payment-to-spend distribution and full payment behavior
SELECT
  CASE
    WHEN PAYMENT_TO_SPEND >= 1.0 THEN 'Full+'
    WHEN PAYMENT_TO_SPEND BETWEEN 0.5 AND 1.0 THEN 'Moderate'
    ELSE 'Minimum/Low'
  END AS repayment_band,
  COUNT(*) AS customers,
  AVG(PRC_FULL_PAYMENT) AS avg_full_payment_ratio
FROM customer_dataset_engineered
GROUP BY 1
ORDER BY customers DESC;