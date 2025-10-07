# Credit Card Loyalty Analysis (Mini-Project)

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