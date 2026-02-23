# DATA DICTIONARY
Project: Customer Churn & Revenue Risk Modeling
Dataset: Telco Customer Churn (7043 × 21)

---

## 1. customerID
- Type: Object (Unique Identifier)
- Description: Unique customer identifier.
- Business Relevance: Used for tracking customers internally.
- Modeling Use: Dropped (identifier only, no predictive value).

---

## 2. gender
- Type: Categorical (Male/Female)
- Description: Customer gender.
- Business Relevance: Used for demographic segmentation.
- Modeling Use: Potential predictor of churn behavior.

---

## 3. SeniorCitizen
- Type: Binary (0 = No, 1 = Yes)
- Description: Indicates whether customer is a senior citizen.
- Business Relevance: Senior customers may have different churn tendencies.
- Modeling Use: Binary feature.

---

## 4. Partner
- Type: Categorical (Yes/No)
- Description: Whether customer has a partner.
- Business Relevance: Family structure may affect churn stability.
- Modeling Use: Binary categorical feature.

---

## 5. Dependents
- Type: Categorical (Yes/No)
- Description: Whether customer has dependents.
- Business Relevance: Customers with dependents may exhibit longer retention.
- Modeling Use: Binary categorical feature.

---

## 6. tenure
- Type: Integer (Months)
- Description: Number of months customer has stayed with company.
- Business Relevance: Strong indicator of loyalty and retention.
- Modeling Use: Core predictor of churn.

---

## 7. PhoneService
- Type: Categorical (Yes/No)
- Description: Whether customer has phone service.
- Business Relevance: Service subscription type.
- Modeling Use: Binary categorical feature.

---

## 8. MultipleLines
- Type: Categorical
- Values: Yes / No / No phone service
- Description: Whether customer has multiple phone lines.
- Business Relevance: Higher service adoption may reduce churn.
- Modeling Use: Multi-class categorical feature.

---

## 9. InternetService
- Type: Categorical
- Values: DSL / Fiber optic / No
- Description: Type of internet service subscribed.
- Business Relevance: Service quality may affect churn risk.
- Modeling Use: Key predictor.

---

## 10–15. Service Add-ons
- Columns:
  - OnlineSecurity
  - OnlineBackup
  - DeviceProtection
  - TechSupport
  - StreamingTV
  - StreamingMovies
- Type: Categorical
- Values: Yes / No / No internet service
- Description: Additional internet services.
- Business Relevance: Bundled services often reduce churn.
- Modeling Use: Important churn predictors.

---

## 16. Contract
- Type: Categorical
- Values: Month-to-month / One year / Two year
- Description: Contract duration.
- Business Relevance: Longer contracts generally reduce churn risk.
- Modeling Use: Strong predictor of churn.

---

## 17. PaperlessBilling
- Type: Categorical (Yes/No)
- Description: Billing preference.
- Business Relevance: May correlate with payment method and churn.
- Modeling Use: Binary feature.

---

## 18. PaymentMethod
- Type: Categorical
- Values:
  - Electronic check
  - Mailed check
  - Bank transfer (automatic)
  - Credit card (automatic)
- Business Relevance: Payment friction may influence churn.
- Modeling Use: Important predictor.

---

## 19. MonthlyCharges
- Type: Float
- Description: Monthly subscription charge.
- Business Relevance: Higher charges may increase churn risk.
- Modeling Use: Numeric predictor.

---

## 20. TotalCharges
- Type: Float (Converted from object)
- Description: Total amount charged to customer.
- Business Relevance: Proxy for customer lifetime value.
- Modeling Use: Highly correlated with tenure.

---

## 21. Churn
- Type: Binary (Yes/No)
- Description: Whether customer left company.
- Business Relevance: Target variable.
- Modeling Use: Dependent variable.
