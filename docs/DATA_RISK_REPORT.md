# DATA RISK REPORT
Project: Customer Churn & Revenue Risk Modeling

---

## 1. Structural Missingness in TotalCharges

- 11 rows had blank values in TotalCharges.
- All 11 rows corresponded to customers with tenure = 0.
- This indicates structural missingness rather than random missing data.
- Likely explanation: New customers have not accumulated charges yet.

Risk Level: Low (After correction)

---

## 2. Multicollinearity Risk

Correlation Matrix Findings:

- tenure ↔ TotalCharges = 0.83
- MonthlyCharges ↔ TotalCharges = 0.65

TotalCharges ≈ MonthlyCharges × tenure

Risk:
Including all three variables in modeling may cause multicollinearity, leading to unstable coefficients.

Mitigation:
Feature selection or engineered features will be considered during modeling phase.

---

## 3. Class Imbalance

Churn Distribution:
- No: ~73%
- Yes: ~27%

Risk:
Accuracy alone is not reliable metric for model evaluation.

Mitigation:
Use precision, recall, ROC-AUC instead of accuracy only.

---

## 4. Categorical Consistency Check

Verified:
If InternetService = "No",
then related services show "No internet service".

If PhoneService = "No",
then MultipleLines = "No phone service".

No inconsistencies detected.

Risk Level: None identified.

---

## 5. Identifier Column

customerID is a unique identifier and does not carry predictive information.

Risk:
Including it in modeling may introduce noise.

Mitigation:
Dropped from dataset.
