-- =============================================================
-- Table       : TBL_VENDOR
-- Schema      : PUBLISH | Database : SC_DEV
-- Description : Published vendor dimension table
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_VENDOR (
    VENDOR_KEY          NUMBER AUTOINCREMENT PRIMARY KEY,
    VENDOR_ID           VARCHAR(50) NOT NULL UNIQUE,
    VENDOR_NAME         VARCHAR(255) NOT NULL,
    VENDOR_CODE         VARCHAR(50),
    COUNTRY             VARCHAR(100),
    CONTACT_EMAIL       VARCHAR(255),
    CONTACT_PHONE       VARCHAR(50),
    PAYMENT_TERMS       VARCHAR(50),
    CURRENCY            VARCHAR(10) DEFAULT 'USD',
    STATUS              VARCHAR(20) DEFAULT 'ACTIVE',
    RISK_CATEGORY       VARCHAR(50),
    IS_PREFERRED        BOOLEAN DEFAULT FALSE,
    PERFORMANCE_SCORE   NUMBER(5,2),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
