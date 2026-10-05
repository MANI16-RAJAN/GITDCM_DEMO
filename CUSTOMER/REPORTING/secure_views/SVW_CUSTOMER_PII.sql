-- =============================================================
-- Secure View : SVW_CUSTOMER_PII
-- Schema      : REPORTING | Database : CUST_DEV
-- Description : Customer PII data - restricted access
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_CUSTOMER_PII AS
SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    DATE_OF_BIRTH,
    ADDRESS_LINE1,
    CITY,
    STATE,
    COUNTRY,
    POSTAL_CODE
FROM CUST_DEV.PUBLISH.TBL_CUSTOMER
WHERE IS_ACTIVE = TRUE;
