-- =============================================================
-- View        : VW_SUPPLY_CHAIN_REPORT
-- Schema      : REPORTING | Database : SC_DEV
-- Description : Supply chain KPI reporting view
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE VIEW VW_SUPPLY_CHAIN_REPORT AS
SELECT
    v.VENDOR_NAME,
    v.COUNTRY,
    v.RISK_CATEGORY,
    DATE_TRUNC('MONTH', po.ORDER_DATE)                          AS ORDER_MONTH,
    COUNT(po.PO_KEY)                                            AS PO_COUNT,
    SUM(po.TOTAL_AMOUNT)                                        AS TOTAL_SPEND,
    SUM(CASE WHEN po.IS_LATE_DELIVERY THEN 1 ELSE 0 END)        AS LATE_DELIVERIES,
    AVG(po.DAYS_OVERDUE)                                        AS AVG_DAYS_OVERDUE,
    SUM(i.TOTAL_VALUE)                                          AS INVENTORY_VALUE
FROM SC_DEV.PUBLISH.TBL_VENDOR v
LEFT JOIN SC_DEV.PUBLISH.TBL_PURCHASE_ORDER po ON v.VENDOR_KEY = po.VENDOR_KEY
LEFT JOIN SC_DEV.PUBLISH.TBL_INVENTORY i      ON i.SOURCE_SYSTEM = v.SOURCE_SYSTEM
GROUP BY
    v.VENDOR_NAME, v.COUNTRY, v.RISK_CATEGORY,
    DATE_TRUNC('MONTH', po.ORDER_DATE);
