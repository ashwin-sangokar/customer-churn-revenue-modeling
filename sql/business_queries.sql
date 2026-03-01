-- ===============================
-- 1. Churn Rate by Contract Type
-- ===============================

SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(100 * SUM(churn_flag) / COUNT(*), 2) AS churn_rate_pct
FROM telco_churn
GROUP BY contract
ORDER BY churn_rate_pct DESC;


-- ================================
-- 2. Revenue Lost by Contract Type
-- ================================

SELECT
    contract,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN monthly_charges ELSE 0 END), 2)
    AS revenue_lost
FROM telco_churn
GROUP BY contract
ORDER BY revenue_lost DESC;

-- ===============================
-- 3. Churn Rate by Tenure Group
-- ===============================

SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(100.0 * SUM(churn_flag) / COUNT(*), 2) AS churn_rate_pct
FROM telco_churn
GROUP BY tenure_group
ORDER BY churn_rate_pct DESC;


-- ===================================================
-- 4. Highest Revenue Risk Segment (Contract + Tenure)
-- ===================================================

SELECT
    contract,
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(100.0 * SUM(churn_flag) / COUNT(*), 2) AS churn_rate_pct,
    ROUND(SUM(monthly_charges), 2) AS segment_revenue
FROM telco_churn
GROUP BY contract, tenure_group
ORDER BY churn_rate_pct DESC;

-- =================================================
-- 5. Average Monthly Charges — Churned vs Retained
-- =================================================

SELECT
    churn_flag,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge
FROM telco_churn
GROUP BY churn_flag;


-- ======================================
-- 6. Revenue Share of High-Risk Segment
-- ======================================

SELECT
    ROUND(100.0 * SUM(monthly_charges) / 
        (SELECT SUM(monthly_charges) FROM telco_churn), 2)
        AS revenue_share_pct
FROM telco_churn
WHERE contract = 'Month-to-month'
AND tenure_group = '0-12';

-- ===============================
-- 7. Churn Rate by Payment Method
-- ===============================

SELECT
    payment_method,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(100 * SUM(churn_flag) / COUNT(*), 2) AS churn_rate_pct
FROM telco_churn
GROUP BY payment_method
ORDER BY churn_rate_pct DESC;
