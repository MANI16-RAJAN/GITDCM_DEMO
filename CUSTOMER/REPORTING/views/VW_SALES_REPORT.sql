-- =============================================================
-- View        : VW_SALES_REPORT
-- Schema      : REPORTING | Database : CUST_DEV
-- Description : Sales performance reporting view
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE VIEW VW_SALES_REPORT AS
SELECT
    DATE_TRUNC('MONTH', o.ORDER_DATE)                           AS SALES_MONTH,
    c.COUNTRY,
    c.CUSTOMER_SEGMENT,
    COUNT(DISTINCT o.ORDER_KEY)                                 AS ORDER_COUNT,
    COUNT(DISTINCT o.CUSTOMER_KEY)                              AS UNIQUE_CUSTOMERS,
    SUM(o.TOTAL_AMOUNT)                                         AS TOTAL_REVENUE,
    AVG(o.TOTAL_AMOUNT)                                         AS AVG_ORDER_VALUE,
    SUM(o.DISCOUNT_AMOUNT)                                      AS TOTAL_DISCOUNTS,
    SUM(o.TAX_AMOUNT)                                           AS TOTAL_TAX
FROM CUST_DEV.PUBLISH.TBL_SALES_ORDER o
JOIN CUST_DEV.PUBLISH.TBL_CUSTOMER c ON o.CUSTOMER_KEY = c.CUSTOMER_KEY
GROUP BY
    DATE_TRUNC('MONTH', o.ORDER_DATE), c.COUNTRY, c.CUSTOMER_SEGMENT;
