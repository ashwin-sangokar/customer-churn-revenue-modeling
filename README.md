# Customer Churn & Revenue Risk Modeling

## 📌 Business Problem

Telecom company experiencing customer churn.  
Objective: Identify churn drivers, quantify revenue risk, and build predictive models to support retention strategies.

---

## 📊 Dataset Overview

- 7,043 customers
- 21 original features
- 1 engineered feature (churn_flag)
- 1 analytical feature (tenure_group)

Includes:
- Demographics
- Service subscriptions
- Contract details
- Billing information
- Target variable (Churn)

---

## 🧹 Data Cleaning Summary

- Converted TotalCharges to numeric
- Resolved 11 structural missing values (tenure = 0 customers)
- Removed identifier column (customerID)
- Added churn_flag (binary target)
- Verified service dependency consistency
- Standardized column naming to snake_case

---

## ⚠ Data Risks Identified

- Structural missingness in TotalCharges
- Moderate class imbalance (73% No / 27% Yes)
- Multicollinearity risk between tenure and total_charges

Detailed documentation available in /docs folder.

---

## 📂 Repository Structure

- `/data` → Raw and cleaned datasets
- `/notebooks` → Data audit & EDA
- `/docs` → Documentation files

---

## 🚀 Next Steps

- Business-driven EDA
- Revenue impact analysis
- Logistic regression modeling
- Executive dashboard (Power BI)
