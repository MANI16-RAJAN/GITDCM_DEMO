-- =============================================================
-- View        : VW_VENDOR_SUMMARY
-- Schema      : PUBLISH | Database : SC_DEV
-- Description : Vendor summary combining vendor and PO metrics
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE VIEW VW_VENDOR_SUMMARY AS
SELECT
    v.VENDOR_KEY,
    v.VENDOR_ID,
    v.VENDOR_NAME,
    v.COUNTRY,
    v.STATUS,
    v.RISK_CATEGORY,
    v.IS_PREFERRED,
    v.PERFORMANCE_SCORE,
    COUNT(po.PO_KEY)                                            AS TOTAL_PO_COUNT,
    SUM(po.TOTAL_AMOUNT)                                        AS TOTAL_SPEND,
    AVG(po.TOTAL_AMOUNT)                                        AS AVG_PO_VALUE,
    SUM(CASE WHEN po.IS_LATE_DELIVERY THEN 1 ELSE 0 END)        AS LATE_DELIVERIES,
    ROUND(
        SUM(CASE WHEN po.IS_LATE_DELIVERY THEN 1 ELSE 0 END)
        * 100.0 / NULLIF(COUNT(po.PO_KEY), 0), 2
    )                                                           AS LATE_DELIVERY_PCT
FROM TBL_VENDOR v
LEFT JOIN TBL_PURCHASE_ORDER po ON v.VENDOR_KEY = po.VENDOR_KEY
GROUP BY
    v.VENDOR_KEY, v.VENDOR_ID, v.VENDOR_NAME, v.COUNTRY,
    v.STATUS, v.RISK_CATEGORY, v.IS_PREFERRED, v.PERFORMANCE_SCORE;
