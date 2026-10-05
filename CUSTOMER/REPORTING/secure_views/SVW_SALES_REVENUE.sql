-- =============================================================
-- Secure View : SVW_SALES_REVENUE
-- Schema      : REPORTING | Database : CUST_DEV
-- Description : Detailed revenue data - finance restricted
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_SALES_REVENUE AS
SELECT
    o.ORDER_NUMBER,
    c.CUSTOMER_ID,
    c.FULL_NAME,
    o.ORDER_DATE,
    o.ORDER_STATUS,
    o.SUBTOTAL,
    o.DISCOUNT_AMOUNT,
    o.DISCOUNT_PCT,
    o.TAX_AMOUNT,
    o.TOTAL_AMOUNT,
    o.CURRENCY,
    o.PAYMENT_METHOD
FROM CUST_DEV.PUBLISH.TBL_SALES_ORDER o
JOIN CUST_DEV.PUBLISH.TBL_CUSTOMER c ON o.CUSTOMER_KEY = c.CUSTOMER_KEY;
