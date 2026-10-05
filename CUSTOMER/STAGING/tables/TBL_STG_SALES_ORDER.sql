-- =============================================================
-- Table       : TBL_STG_SALES_ORDER
-- Schema      : STAGING | Database : CUST_DEV
-- Description : Cleansed and validated sales order data
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_SALES_ORDER (
    STG_ORDER_KEY       NUMBER AUTOINCREMENT PRIMARY KEY,
    ORDER_ID            VARCHAR(50),
    ORDER_NUMBER        VARCHAR(50),
    CUSTOMER_ID         VARCHAR(50),
    ORDER_DATE          DATE,
    SHIPPED_DATE        DATE,
    DELIVERY_DATE       DATE,
    ORDER_STATUS        VARCHAR(30),
    PAYMENT_METHOD      VARCHAR(50),
    SUBTOTAL            NUMBER(18,2),
    DISCOUNT_AMOUNT     NUMBER(18,2),
    TAX_AMOUNT          NUMBER(18,2),
    TOTAL_AMOUNT        NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
