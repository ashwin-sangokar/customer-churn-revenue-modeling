# ASSUMPTION LOG
Project: Customer Churn & Revenue Risk Modeling

---

## Assumption 1: Handling Missing TotalCharges

Observation:
11 blank values detected in TotalCharges.

Decision:
Converted to numeric and filled NaN with 0.

Justification:
All 11 rows correspond to tenure = 0 customers.
Since they have not accumulated billing yet,
TotalCharges logically equals 0.

Impact:
Minimal. Affects only 11 rows (0.16% of dataset).

---

## Assumption 2: Dropping customerID

Decision:
Removed customerID column.

Justification:
It is a unique identifier with no predictive value.

Impact:
None on model performance.

---

## Assumption 3: Tenure Bucketing (for EDA)

Created tenure groups:
- 0–12
- 12–24
- 24–48
- 48+

Justification:
Allows better interpretation of churn behavior across lifecycle stages.

Impact:
Used only for EDA and dashboarding.

---

## Assumption 4: Service Logic Validation

Verified:
Service dependency fields correctly align with InternetService and PhoneService.

No correction required.

---

## Assumption 5: Future Modeling Feature Selection

Due to strong correlation between:
- tenure
- MonthlyCharges
- TotalCharges

One of these may be removed or engineered during modeling phase to reduce multicollinearity.

Decision to be finalized in modeling stage.
