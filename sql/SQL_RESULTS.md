# 🗄 SQL Business Query Results

All SQL queries were executed in a MySQL environment and cross-validated against Python EDA outputs to ensure consistency and accuracy.

Dataset Used: `telco_churn_cleaned_v1.csv`  
Table Name: `telco_churn`

---

## 1️⃣ Churn Rate by Contract Type

**Business Question:**  
Which contract type has the highest churn rate?

**Results:**

| Contract        | Churn Rate (%) |
|----------------|---------------|
| Month-to-month | 42.7%        |
| One year       | 11.3%        |
| Two year       | 2.8%         |

**Interpretation:**  
Month-to-month contracts are the strongest churn driver.  
Customers without long-term commitment are significantly more likely to leave.

---

## 2️⃣ Revenue Lost by Contract Type

**Business Question:**  
Which contract type contributes the most to churn-related revenue loss?

**Results:**

| Contract        | Monthly Revenue Lost |
|----------------|----------------------|
| Month-to-month | $120,847             |
| One year       | $14,118              |
| Two year       | $4,165               |

**Interpretation:**  
Over 85% of churn-related revenue loss originates from month-to-month customers.  
Retention efforts should prioritize this segment.

---

## 3️⃣ Churn Rate by Tenure Group

**Business Question:**  
How does churn vary across customer lifecycle stages?

**Results:**

| Tenure Group | Churn Rate (%) |
|--------------|---------------|
| 0–12 months  | 47.4%         |
| 12–24 months | 28.7%         |
| 24–48 months | 20.4%         |
| 48+ months   | 9.5%          |

**Interpretation:**  
The first year represents the highest churn risk window.  
Retention programs should focus on early customer lifecycle engagement.

---

## 4️⃣ Highest Revenue Risk Segment (Contract + Tenure)

**Business Question:**  
Which combined segment poses the highest financial risk?

**Top Segment Identified:**

- Contract: Month-to-month  
- Tenure: 0–12 months  
- Churn Rate: 51.35%  
- Monthly Revenue Contribution: $68,301  

**Interpretation:**  
This segment combines high churn probability with significant revenue concentration.  
It represents the highest ROI retention opportunity.

---

## 5️⃣ Average Monthly Charges — Churned vs Retained

**Business Question:**  
Do churned customers pay more on average?

**Results:**

| Customer Type | Avg Monthly Charge |
|--------------|-------------------|
| Retained     | $61.27            |
| Churned      | $74.44            |

**Interpretation:**  
Churned customers pay ~21% more on average.  
Revenue loss is concentrated among higher-paying customers, increasing financial impact.

---

## 6️⃣ Revenue Share of High-Risk Segment

**Business Question:**  
What percentage of total revenue comes from the highest-risk segment?

**Result:**

- Month-to-month + 0–12 months = **25.45% of total revenue**

**Interpretation:**  
A single high-risk segment contributes over one-quarter of total company revenue,  
making it a critical focus area for retention investment.

---

## 7️⃣ Churn Rate by Payment Method

**Business Question:**  
Does payment behavior signal churn risk?

**Results:**

| Payment Method     | Churn Rate (%) |
|-------------------|---------------|
| Electronic check  | 45.3%         |
| Mailed check      | 19.1%         |
| Bank transfer     | ~16%          |
| Credit card       | ~15%          |

**Interpretation:**  
Customers using electronic check exhibit significantly higher churn rates.  
Payment automation appears correlated with customer stability.

---

# 📌 Final Validation Note

All SQL results align precisely with Python-based EDA findings, ensuring analytical consistency across tools.

The SQL layer confirms that:

- Churn is contract-driven  
- Early tenure amplifies risk  
- Revenue loss is concentrated in high-value segments  
- Targeted retention can significantly reduce financial exposure