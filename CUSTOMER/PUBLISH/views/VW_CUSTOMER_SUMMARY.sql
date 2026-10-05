-- =============================================================
-- View        : VW_CUSTOMER_SUMMARY
-- Schema      : PUBLISH | Database : CUST_DEV
-- Description : Customer summary with sales aggregates
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE VIEW VW_CUSTOMER_SUMMARY AS
SELECT
    c.CUSTOMER_KEY,
    c.CUSTOMER_ID,
    c.FULL_NAME,
    c.EMAIL,
    c.COUNTRY,
    c.CUSTOMER_SEGMENT,
    c.AGE_BAND,
    c.REGISTRATION_DATE,
    COUNT(o.ORDER_KEY)                                          AS TOTAL_ORDERS,
    SUM(o.TOTAL_AMOUNT)                                         AS LIFETIME_SPEND,
    AVG(o.TOTAL_AMOUNT)                                         AS AVG_ORDER_VALUE,
    MAX(o.ORDER_DATE)                                           AS LAST_ORDER_DATE,
    DATEDIFF('DAY', MAX(o.ORDER_DATE), CURRENT_DATE())          AS DAYS_SINCE_LAST_ORDER
FROM TBL_CUSTOMER c
LEFT JOIN TBL_SALES_ORDER o ON c.CUSTOMER_KEY = o.CUSTOMER_KEY
GROUP BY
    c.CUSTOMER_KEY, c.CUSTOMER_ID, c.FULL_NAME, c.EMAIL,
    c.COUNTRY, c.CUSTOMER_SEGMENT, c.AGE_BAND, c.REGISTRATION_DATE;
