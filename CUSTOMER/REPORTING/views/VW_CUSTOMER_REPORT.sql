-- =============================================================
-- View        : VW_CUSTOMER_REPORT
-- Schema      : REPORTING | Database : CUST_DEV
-- Description : Customer analytics reporting view
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE VIEW VW_CUSTOMER_REPORT AS
SELECT
    c.COUNTRY,
    c.CUSTOMER_SEGMENT,
    c.AGE_BAND,
    c.GENDER,
    COUNT(DISTINCT c.CUSTOMER_KEY)                              AS CUSTOMER_COUNT,
    COUNT(DISTINCT o.ORDER_KEY)                                 AS TOTAL_ORDERS,
    SUM(o.TOTAL_AMOUNT)                                         AS TOTAL_REVENUE,
    AVG(o.TOTAL_AMOUNT)                                         AS AVG_ORDER_VALUE,
    ROUND(COUNT(DISTINCT o.ORDER_KEY) * 1.0
        / NULLIF(COUNT(DISTINCT c.CUSTOMER_KEY), 0), 2)         AS ORDERS_PER_CUSTOMER
FROM CUST_DEV.PUBLISH.TBL_CUSTOMER c
LEFT JOIN CUST_DEV.PUBLISH.TBL_SALES_ORDER o ON c.CUSTOMER_KEY = o.CUSTOMER_KEY
GROUP BY c.COUNTRY, c.CUSTOMER_SEGMENT, c.AGE_BAND, c.GENDER;
