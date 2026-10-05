-- =============================================================
-- Table       : TBL_CUR_SALES_ORDER
-- Schema      : CURATED | Database : CUST_DEV
-- Description : Curated sales order with business rules applied
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_SALES_ORDER (
    ORDER_KEY           NUMBER AUTOINCREMENT PRIMARY KEY,
    ORDER_ID            VARCHAR(50) NOT NULL,
    ORDER_NUMBER        VARCHAR(50) NOT NULL,
    CUSTOMER_KEY        NUMBER,
    ORDER_DATE          DATE,
    SHIPPED_DATE        DATE,
    DELIVERY_DATE       DATE,
    ORDER_STATUS        VARCHAR(30),
    PAYMENT_METHOD      VARCHAR(50),
    SUBTOTAL            NUMBER(18,2),
    DISCOUNT_AMOUNT     NUMBER(18,2),
    DISCOUNT_PCT        NUMBER(5,2),
    TAX_AMOUNT          NUMBER(18,2),
    TOTAL_AMOUNT        NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    DAYS_TO_SHIP        NUMBER,
    IS_RETURNED         BOOLEAN DEFAULT FALSE,
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
