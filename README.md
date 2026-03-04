# 📊 Customer Churn & Revenue Risk Modeling

## 🧠 Executive Summary

- 26.5% of customers churn, but they account for **30.5% of total revenue**.
- Over **85% of churn-related revenue loss** comes from month-to-month contracts.
- Month-to-month customers in their first 12 months represent the **highest financial risk segment**.
- Targeted retention in this segment offers the highest ROI opportunity.

---

## 📌 Business Problem

A telecom company is experiencing customer churn that is impacting recurring revenue.

This project aims to:

- Identify primary churn drivers  
- Quantify revenue leakage  
- Detect high-risk customer segments  
- Prioritize retention strategies based on financial impact  

The focus is on **revenue-weighted churn analysis**, not just churn rate.

---

## 📊 Dataset Overview

- 7,043 customers
- 21 original features
- 1 engineered feature: `churn_flag`
- 1 analytical feature: `tenure_group`

Data categories include:

- Customer demographics  
- Subscription & service usage  
- Contract details  
- Payment behavior  
- Billing information  

Target variable: `churn` / `churn_flag`

---

## 🧹 Data Cleaning & Preparation

Key transformations:

- Converted `total_charges` to numeric
- Resolved 11 structural missing values (tenure = 0 customers)
- Removed identifier column (`customerID`)
- Added `churn_flag` (binary target variable)
- Engineered `tenure_group` for lifecycle analysis
- Standardized column names to `snake_case`
- Validated consistency across service-related fields

Cleaned dataset: `/data/telco_churn_cleaned_v1.csv`

---

## ⚠ Data Risks Identified

- Structural missingness in `total_charges`
- Moderate class imbalance (73% retained / 27% churned)
- Multicollinearity between `tenure` and `total_charges`
- Potential confounding between contract type and payment behavior

Detailed documentation available in `/docs`:

- `DATA_DICTIONARY.md`
- `DATA_RISK_REPORT.md`
- `ASSUMPTION_LOG.md`

---

## 📈 Business EDA Highlights

### 🔹 Churn Impact

- Total Monthly Revenue: **$456,116**
- Monthly Revenue Lost to Churn: **$139,130**
- Revenue Loss Rate: **30.5%**

Churn is concentrated among **higher-paying customers**.

---

### 🔹 Primary Churn Drivers

1. **Contract Type**
   - Month-to-month churn rate: 42.7%
   - Generates majority of churn-related revenue loss

2. **Early Tenure**
   - 0–12 months churn rate: 47.4%
   - First year is critical retention window

3. **Payment Behavior**
   - Electronic check churn rate: 45.3%
   - Payment automation correlates with stability

4. **Higher Monthly Charges**
   - Churned customers pay ~21% more on average

---

### 🔥 Highest-Risk Segment

**Month-to-month customers with 0–12 months tenure**

- Churn Rate: 51.35%
- Revenue Share: 25.45%
- Monthly Revenue Loss: $68,301

This segment represents the highest ROI intervention opportunity.

Full EDA report available in:
`/docs/EDA_REPORT.md`

---

## 🗄 SQL Business Validation

All EDA insights were cross-validated using SQL queries executed in a MySQL environment.

SQL assets located in `/sql`:

- `schema.sql`
- `business_queries.sql`
- `SQL_RESULTS.md`

The SQL layer confirms consistency between analytical and database-level aggregation.

---

## 📊 Interactive Dashboard (Power BI)

A two-page interactive Power BI dashboard was built to visualize churn risk and revenue exposure across customer segments.

### Page 1 — Executive Overview

Provides a high-level summary of churn impact and revenue risk.

Key elements:

- KPI overview (Customers, Churn Rate, Revenue, Revenue Loss, ARPU)
- Churn risk by contract type
- Revenue exposure by contract
- Lifecycle churn analysis (tenure groups)

### Page 2 — Revenue Risk Segmentation

A deeper analytical view designed to identify high-impact churn segments.

Key elements:

- Revenue concentration matrix (Contract × Tenure)
- Revenue share and churn rate comparison
- Priority scoring to rank high-risk segments
- Identification of the highest financial risk segment

### Dashboard Preview

dashboard/dashboard.pdf


---

## 🎯 Objective

Transform churn from a reporting metric into a **decision-driven revenue strategy**.

This project demonstrates end-to-end capability in:

- Data auditing
- Feature engineering
- Business-driven EDA
- SQL validation
- Revenue risk analysis
- Strategic prioritization

## 💡 Skills Demonstrated

Python  
Pandas & Data Analysis  
SQL (MySQL)  
Business Analytics  
Power BI Dashboarding  
Customer Churn Analysis  
Revenue Risk Modeling