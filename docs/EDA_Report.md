# 📊 Customer Churn — Business EDA Report

## 🧠 Executive Summary

- **26.5% customer churn drives 30.5% of total monthly revenue loss**, indicating that churned customers have a higher-than-average revenue contribution.

- **Month-to-month contracts account for ~85% of churn-related revenue loss**, making them the single largest source of revenue risk.

- **Early-tenure month-to-month customers represent ~15% of total company revenue and form the highest-ROI retention segment**, as they combine:
  - very high churn probability  
  - strong revenue contribution  
  - early lifecycle intervention opportunity

## 1️⃣ Business Problem

Customer churn is causing a significant loss in recurring monthly revenue.
The objective of this analysis is to:

* Identify high-risk customer segments
* Quantify revenue leakage
* Detect early churn signals
* Prioritize retention efforts based on financial impact

This analysis focuses on **revenue-weighted churn**, not just customer count.

---

## 2️⃣ Churn Impact — Key KPIs

| Metric                               | Value        |
| ------------------------------------ | ------------ |
| Total Customers                      | 7,043        |
| Churned Customers                    | 1,869        |
| Churn Rate                           | **26.5%**    |
| Average Monthly Revenue per Customer | **$64.76**   |
| Total Monthly Revenue                | **$456,116** |
| Monthly Revenue Lost to Churn        | **$139,130** |
| Revenue Loss %                       | **30.5%**    |

### 🔍 Key Insight

Although only **26.5%** of customers churn, they contribute to **30.5% of total revenue**, meaning:

➡ Churn is concentrated among **higher-paying customers**

### 💼 Business Meaning

Churn is not just a volume problem — it is a **revenue quality risk**.

Retention strategies must focus on **high-value customers**.

---

## 3️⃣ Primary Churn Drivers

### 📌 Contract Type

| Contract       | Churn Rate |
| -------------- | ---------- |
| Month-to-month | **42.7%**  |
| One year       | 11.3%      |
| Two year       | 2.8%       |

**Over 85% of total revenue loss comes from month-to-month customers.**

**Business Interpretation:**
Lack of long-term commitment is the strongest churn predictor.

---

### ⏳ Customer Tenure

| Tenure Group | Churn Rate |
| ------------ | ---------- |
| 0–12 months  | **47.4%**  |
| 12–24 months | 28.7%      |
| 24–48 months | 20.4%      |
| 48+ months   | 9.5%       |

**Business Interpretation:**
The first year is the most critical retention window.

---

### 💳 Payment Method

| Payment Type     | Churn Rate |
| ---------------- | ---------- |
| Electronic check | **45.3%**  |
| Auto-pay methods | ~16%       |
| Mailed check     | 19.1%      |

**Business Interpretation:**
Payment behavior acts as a **customer stability signal**.
Customers not on auto-pay are significantly more likely to churn.

---

### 🌐 Internet Service Type

| Service     | Churn Rate | Avg Monthly Charge |
| ----------- | ---------- | ------------------ |
| Fiber optic | **41.9%**  | **$91.50**         |
| DSL         | 19.0%      | $58.10             |
| No internet | 7.4%       | $21.08             |

**Business Interpretation:**
Higher churn in fiber customers is strongly linked to **higher pricing**, not necessarily service type alone.

---

## 4️⃣ Price Sensitivity & Revenue Risk

| Customer Type | Avg Monthly Charge |
| ------------- | ------------------ |
| Retained      | $61.27             |
| Churned       | **$74.44**         |

Churned customers pay **~21% more** on average.

### 💼 Business Meaning

High-ARPU customers are more price-sensitive and more likely to churn.

This creates **disproportionate revenue loss**.

---

## 5️⃣ Revenue Leakage Concentration

### Revenue Lost by Contract

| Contract       | Monthly Revenue Lost |
| -------------- | -------------------- |
| Month-to-month | **$120,847**         |
| One year       | $14,118              |
| Two year       | $4,165               |

Month-to-month customers alone generate:

➡ **56.4% of total company revenue**
➡ The **majority of churn losses**

---

## 6️⃣ Highest-Risk Customer Segment

**Segment:**
Month-to-month customers with **0–12 months tenure**

* Churn Rate: **51.35%**
* Revenue Share: **25.45%**
* Monthly Revenue Loss: **$68,301**
* Priority Score: **Highest**

### 🎯 Why This Segment Matters

This group:

* Has the highest churn probability
* Contributes a large share of revenue
* Has low contractual commitment

This is the **top ROI retention target**.

---

## 7️⃣ Churn Reduction Priority Ranking

Priority Score is calculated as:

Priority Score = churn rate × revenue share

This ensures retention efforts are focused where they produce the **maximum financial impact**.

### 🔥 Top Priority Segment

Month-to-month customers in the **first 12 months** represent the **highest-value intervention opportunity**.

---

## 8️⃣ Early Warning Indicators

Customers with the following characteristics are most at risk:

* Month-to-month contract
* Tenure below 12 months
* High monthly charges
* Electronic check payment method

These can be used to build **proactive retention triggers**.

---

## 9️⃣ Strategic Business Recommendations

### 1️⃣ Immediate Focus (Highest ROI)

Target: Month-to-month customers in early tenure

Actions:

* Contract upgrade incentives
* First-year onboarding programs
* Personalized retention offers

---

### 2️⃣ Protect High-Value Customers

* Smart discounting for high monthly charge users
* Premium support for fiber customers
* Value-based bundling

---

### 3️⃣ Improve Customer Stability

* Promote automatic payment methods
* Incentivize long-term contracts

---

## 🏁 Final Business Conclusion

Customer churn is not just a retention issue — it is a **revenue concentration risk**.

By prioritizing the top-ranked segment, the company can:

* Protect a disproportionate share of recurring revenue
* Improve retention efficiency
* Maximize ROI from targeted interventions

This analysis converts churn from a reporting metric into a **decision-driven growth strategy**.
