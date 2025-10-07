-- summary_by_segment.sql
-- Aggregates by derived segment (Gold/Silver/Bronze)
SELECT SEGMENT,
       COUNT(*) AS customers,
       AVG(SPEND) AS avg_spend,
       AVG(FREQ_SCORE) AS avg_freq,
       AVG(PRC_FULL_PAYMENT) AS avg_full_payment,
       AVG(ADVANCE_RATIO) AS avg_advance_ratio
FROM customer_dataset_engineered
GROUP BY SEGMENT
ORDER BY SEGMENT;