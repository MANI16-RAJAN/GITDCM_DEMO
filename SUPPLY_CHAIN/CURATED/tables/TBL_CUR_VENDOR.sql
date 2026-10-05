-- =============================================================
-- Table       : TBL_CUR_VENDOR
-- Schema      : CURATED | Database : SC_DEV
-- Description : Business-rule-applied curated vendor data (SCD Type 2)
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_VENDOR (
    VENDOR_KEY          NUMBER AUTOINCREMENT PRIMARY KEY,
    VENDOR_ID           VARCHAR(50) NOT NULL,
    VENDOR_NAME         VARCHAR(255) NOT NULL,
    VENDOR_CODE         VARCHAR(50),
    COUNTRY             VARCHAR(100),
    CONTACT_EMAIL       VARCHAR(255),
    CONTACT_PHONE       VARCHAR(50),
    PAYMENT_TERMS       VARCHAR(50),
    CURRENCY            VARCHAR(10),
    STATUS              VARCHAR(20),
    RISK_CATEGORY       VARCHAR(50),
    IS_PREFERRED        BOOLEAN DEFAULT FALSE,
    SOURCE_SYSTEM       VARCHAR(50),
    EFFECTIVE_DATE      DATE,
    EXPIRY_DATE         DATE,
    IS_CURRENT          BOOLEAN DEFAULT TRUE,
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
