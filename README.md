# 📊 Customer Churn & Revenue Risk Modeling

An end-to-end data analytics project analyzing telecom customer churn and its impact on recurring revenue.  
The analysis focuses on **revenue-weighted churn risk**, identifying high-impact customer segments and prioritizing retention strategies based on financial exposure.

---

# 🧠 Executive Summary

- **26.5% of customers churn**, but they account for **30.5% of total revenue**.
- Over **85% of churn-related revenue loss** comes from **month-to-month contracts**.
- Customers in their **first 12 months** represent the **highest financial risk segment**.
- Targeted retention in this segment provides the **highest ROI opportunity**.

---

# 📌 Business Problem

Telecom companies face significant revenue loss due to customer churn.  
While churn rate is commonly tracked, businesses often fail to understand **which customers create the highest financial risk**.

This project aims to:

- Identify **primary churn drivers**
- Quantify **revenue leakage**
- Detect **high-risk customer segments**
- Prioritize **retention strategies based on financial impact**

The focus is on **revenue-weighted churn analysis**, not just churn rate.

---

# 📊 Dataset Overview

- **7,043 customers**
- **21 original features**
- **1 engineered feature:** `churn_flag`
- **1 analytical feature:** `tenure_group`

### Data Categories

- Customer demographics
- Subscription & service usage
- Contract details
- Payment behavior
- Billing information

**Target variable:** `churn` / `churn_flag`

---

# 🧹 Data Cleaning & Preparation

Key transformations performed during data preparation:

- Converted `total_charges` to numeric
- Resolved **11 structural missing values**
- Removed identifier column (`customerID`)
- Created binary target variable **`churn_flag`**
- Engineered **`tenure_group`** for lifecycle analysis
- Standardized column names to **snake_case**
- Validated consistency across service-related fields

Cleaned dataset:
/data/telco_churn_cleaned_v1.csv

---

# ⚠ Data Risks Identified

- Structural missingness in `total_charges`
- Moderate class imbalance (73% retained / 27% churned)
- Multicollinearity between `tenure` and `total_charges`
- Potential confounding between contract type and payment behavior

Detailed documentation available in:
/docs/DATA_DICTIONARY.md
/docs/DATA_RISK_REPORT.md
/docs/ASSUMPTION_LOG.md

---

# 📈 Business EDA Highlights

## 🔹 Churn Impact

- Total Monthly Revenue: **$456,116**
- Monthly Revenue Lost to Churn: **$139,130**
- Revenue Loss Rate: **30.5%**

Churn is concentrated among **higher-paying customers**.

---

## 🔹 Primary Churn Drivers

### 1️⃣ Contract Type

- Month-to-month churn rate: **42.7%**
- Generates the majority of churn-related revenue loss

### 2️⃣ Early Customer Lifecycle

- 0–12 months churn rate: **47.4%**
- First year is the **critical retention window**

### 3️⃣ Payment Behavior

- Electronic check churn rate: **45.3%**
- Payment automation correlates with lower churn

### 4️⃣ Higher Monthly Charges

- Churned customers pay **~21% more on average**

---

## 🔥 Highest Risk Segment

**Month-to-month customers with tenure between 0–12 months**

- Churn Rate: **51.35%**
- Revenue Share: **25.45%**
- Monthly Revenue Loss: **$68,301**

This segment represents the **highest ROI intervention opportunity**.

Full exploratory analysis available in:
/docs/EDA_REPORT.md

---

# 🗄 SQL Business Validation

All analytical insights were **cross-validated using SQL queries executed in MySQL**.

SQL assets are available in:
/sql/schema.sql
/sql/business_queries.sql
/sql/SQL_RESULTS.md

This ensures consistency between **Python analysis and database-level aggregation**.

---

# 📊 Interactive Dashboard (Power BI)

A **two-page Power BI dashboard** was built to visualize churn risk and revenue exposure across customer segments.

### Page 1 — Executive Overview

Provides a high-level summary of churn impact.

Key elements:

- KPI summary (Customers, Churn Rate, Revenue, Revenue Loss, ARPU)
- Churn risk by contract type
- Revenue exposure by contract
- Lifecycle churn analysis (tenure groups)

---

### Page 2 — Revenue Risk Segmentation

Deeper analytical view designed to identify high-impact churn segments.

Key elements:

- Revenue concentration matrix (Contract × Tenure)
- Revenue share vs churn rate comparison
- Priority scoring for churn risk segments
- Identification of the highest financial risk segment

Dashboard preview:
/dashboard/dashboard.pdf

---

# 📊 Statistical Validation

To verify that observed churn patterns were **not caused by random variation**, statistical hypothesis testing was performed.

Statistical analysis notebook:
/notebooks/03_statistical_validation.ipynb

### Tests Conducted

### 1️⃣ Contract Type vs Churn  
Chi-Square Test of Independence

Result:
Chi-square statistic = 1184.59
p-value < 0.001

Interpretation:

Contract structure has a **statistically significant relationship with churn**.

---

### 2️⃣ Monthly Charges vs Churn  
Independent Two-Sample T-Test

Result:
T-statistic = 16.53
p-value < 0.001

Interpretation:

Churned customers **pay significantly higher monthly charges**.

---

### 3️⃣ Tenure vs Churn  
Independent Two-Sample T-Test

Result:
T-statistic = -31.57
p-value < 0.001

Interpretation:

Customers who churn have **significantly shorter tenure**.

---

### Conclusion

All tested churn drivers show **strong statistical significance**, reinforcing the reliability of earlier exploratory findings.

Detailed documentation:
/docs/STATISTICAL_VALIDATION.md

---

# 🧾 Business Presentation

A business-oriented presentation summarizes the analytical findings for non-technical stakeholders.

The presentation includes:

- Business problem framing
- Dataset overview
- Key churn drivers
- Revenue risk concentration
- Statistical validation
- Strategic retention recommendations

Presentation file:
/Business_Presentation/Customer-Churn-and-Revenue-Risk-Analysis.pdf

---

# 🤖 Predictive Modeling

A predictive model was built to identify customers at high risk of churn and enable proactive retention strategies.

Modeling notebook:
`/notebooks/04_churn_prediction_model.ipynb`

## Modeling Approach

Two models were developed and compared:

1️⃣ Logistic Regression  
2️⃣ Random Forest Classifier

The target variable used for prediction was:

`churn_flag`

Categorical variables were encoded using one-hot encoding, and numerical features were standardized for Logistic Regression.

Dataset was split using:

- **80% Training**
- **20% Testing**

Stratified sampling ensured consistent churn distribution between train and test sets.

---

## Model Performance

| Model | Accuracy | Precision | Recall | F1 Score | ROC-AUC |
|------|------|------|------|------|------|
| Logistic Regression | 0.798 | 0.65 | 0.52 | 0.58 | 0.84 |
| Random Forest | 0.794 | 0.64 | 0.51 | 0.57 | 0.83 |

Both models achieved strong predictive performance, with **Logistic Regression slightly outperforming Random Forest** on this dataset.

---

## Key Predictive Features

Top drivers identified by the model include:

- Contract type
- Monthly charges
- Customer tenure
- Internet service type
- Payment method behavior

These factors align closely with the **EDA findings and statistical test results**, reinforcing the reliability of the analysis.

---

## Business Implications

Predictive modeling enables telecom companies to:

- Identify **high-risk customers early**
- Target **retention strategies before churn occurs**
- Reduce **revenue leakage from high-value customers**

Example interventions:

- Early lifecycle engagement for new customers
- Contract upgrade incentives for month-to-month users
- Pricing or value adjustments for high monthly charge segments

Predictive churn models allow businesses to move from **reactive churn reporting to proactive churn prevention**.

---

# 🎯 Objective

Transform churn from a simple reporting metric into a **decision-driven revenue strategy**.

This project demonstrates end-to-end capability in:

- Data auditing
- Feature engineering
- Business-driven EDA
- SQL validation
- Revenue risk analysis
- Statistical testing
- Dashboard development
- Business storytelling

---

# 💡 Skills Demonstrated

- Python  
- Pandas & Data Analysis  
- SQL (MySQL)  
- Statistical Analysis  
- Business Analytics  
- Power BI Dashboarding  
- Customer Churn Analysis  
- Revenue Risk Modeling  

---