# Credit Card Loyalty Analysis (Mini-Project)
# 💳 Credit Card Loyalty Analysis  
**Business Insights Project | Fintech Analytics | Python + SQL**

[![Made with Python](https://img.shields.io/badge/Made with-Python-blue.svg)](https://www.python.org/)
[![SQL Ready](https://img.shields.io/badge/SQL-Queries Included-lightgrey.svg)](#)
[![Data Visualization](https://img.shields.io/badge/Visuals-Matplotlib-orange.svg)](#)
[![Layout](https://img.shields.io/badge/Layout-Business White-lightblue.svg)](#)

> Analyze credit-card customer behavior to segment users by loyalty tiers  
> (Bronze / Silver / Gold) and reveal spending vs repayment trends.

📘 **Report:** [Credit_Card_Loyalty_Insights_White.pdf](reports/Credit_Card_Loyalty_Insights_White.pdf)  
📊 **Visuals:** [Spend-to-Limit](visuals/dist_spend_to_limit.png) • [Payment-to-Spend](visuals/payment_to_spend_by_segment.png) • [Avg Spend](visuals/avg_spend_by_segment.png)
![Portfolio Banner](visuals/A_LinkedIn_carousel_post_in_the_image_consists_of_.png)
## 📈 Project Overview
This project explores credit-card customer engagement and repayment patterns using a dataset of 8,950 records.  
The analysis builds engineered features (`SPEND_TO_LIMIT`, `PAYMENT_TO_SPEND`, `ADVANCE_RATIO`, `FREQ_SCORE`) to segment customers and uncover key loyalty behaviors.

### Highlights
- Gold segment → ≈3 × higher average spend than Bronze  
- Silver segment → balanced utilization & repayment ratio  
- 28 % customers → minimum-payment risk flag  
- High spenders → potential upgrade to higher loyalty tier
## 📈 Project Overview
This project explores credit-card customer engagement and repayment patterns using a dataset of 8,950 records.  
The analysis builds engineered features (`SPEND_TO_LIMIT`, `PAYMENT_TO_SPEND`, `ADVANCE_RATIO`, `FREQ_SCORE`) to segment customers and uncover key loyalty behaviors.

### Highlights
- Gold segment → ≈3 × higher average spend than Bronze  
- Silver segment → balanced utilization & repayment ratio  
- 28 % customers → minimum-payment risk flag  
- High spenders → potential upgrade to higher loyalty tier
### Featured Project: Credit Card Loyalty Analysis
[![GitHub Repo](https://img.shields.io/badge/View on GitHub-000000?logo=github)](https://github.com/FATIMA-FARMAN/credit-card-loyalty-analysis)

**Goal:** Segment customers and estimate loyalty & LTV indicators from credit card usage data.

## Dataset
`data/Customer_Dataset.csv` (8,950 rows, 18 columns)

## Engineered Features
- `SPEND = PURCHASES + ONEOFF_PURCHASES + INSTALLMENTS_PURCHASES`
- `SPEND_TO_LIMIT = SPEND / CREDIT_LIMIT`
- `PAYMENT_TO_SPEND = PAYMENTS / SPEND`
- `ADVANCE_RATIO = CASH_ADVANCE / SPEND`
- `FREQ_SCORE = PURCHASES_FREQUENCY + ONEOFF_PURCHASES_FREQ + PURCHASES_INSTALLMENTS_FREQUENCY`
- `SEGMENT` via quantiles on `LTV_SCORE_RAW = 0.5*SPEND_TO_LIMIT + 0.3*FREQ_SCORE + 0.2*PRC_FULL_PAYMENT`

## Project Structure
```
credit-card-loyalty-analysis/
├── data/
├── sql/
├── notebooks/
├── visuals/
└── reports/
```

## Quickstart
```bash
pip install -r requirements.txt
jupyter notebook notebooks/segmentation_analysis.ipynb
```

## KPIs
- Avg Spend / Freq by Segment
- Payment-to-Spend (repayment behavior)
- Advance Ratio (risk/credit behavior)

## Visuals
- Distribution: Spend-to-Limit
- Payment-to-Spend by Segment
- Average Spend by Segment
- Payments vs Spend (scatter)
