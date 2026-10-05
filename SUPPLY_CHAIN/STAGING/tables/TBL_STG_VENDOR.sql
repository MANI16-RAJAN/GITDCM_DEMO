-- =============================================================
-- Table       : TBL_STG_VENDOR
-- Schema      : STAGING | Database : SC_DEV
-- Description : Cleansed and validated vendor data
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_VENDOR (
    STG_VENDOR_KEY      NUMBER AUTOINCREMENT PRIMARY KEY,
    VENDOR_ID           VARCHAR(50),
    VENDOR_NAME         VARCHAR(255),
    VENDOR_CODE         VARCHAR(50),
    COUNTRY             VARCHAR(100),
    CONTACT_EMAIL       VARCHAR(255),
    CONTACT_PHONE       VARCHAR(50),
    PAYMENT_TERMS       VARCHAR(50),
    CURRENCY            VARCHAR(10),
    STATUS              VARCHAR(20),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
