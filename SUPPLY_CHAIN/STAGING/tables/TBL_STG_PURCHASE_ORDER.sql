-- =============================================================
-- Table       : TBL_STG_PURCHASE_ORDER
-- Schema      : STAGING | Database : SC_DEV
-- Description : Cleansed and validated purchase order data
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_PURCHASE_ORDER (
    STG_PO_KEY          NUMBER AUTOINCREMENT PRIMARY KEY,
    PO_ID               VARCHAR(50),
    PO_NUMBER           VARCHAR(50),
    VENDOR_ID           VARCHAR(50),
    ORDER_DATE          DATE,
    DELIVERY_DATE       DATE,
    PO_STATUS           VARCHAR(30),
    TOTAL_AMOUNT        NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    CREATED_BY          VARCHAR(100),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
