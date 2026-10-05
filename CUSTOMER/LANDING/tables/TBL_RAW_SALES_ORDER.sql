-- =============================================================
-- Table       : TBL_RAW_SALES_ORDER
-- Schema      : LANDING | Database : CUST_DEV
-- Description : Raw sales order data from source systems
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_SALES_ORDER (
    RAW_ORDER_ID        VARCHAR(50),
    ORDER_NUMBER        VARCHAR(50),
    CUSTOMER_ID         VARCHAR(50),
    ORDER_DATE          VARCHAR(30),
    SHIPPED_DATE        VARCHAR(30),
    DELIVERY_DATE       VARCHAR(30),
    ORDER_STATUS        VARCHAR(30),
    PAYMENT_METHOD      VARCHAR(50),
    SUBTOTAL            VARCHAR(50),
    DISCOUNT_AMOUNT     VARCHAR(50),
    TAX_AMOUNT          VARCHAR(50),
    TOTAL_AMOUNT        VARCHAR(50),
    CURRENCY            VARCHAR(10),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
