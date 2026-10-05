-- =============================================================
-- Table       : TBL_RAW_VENDOR
-- Schema      : LANDING | Database : SC_DEV
-- Description : Raw vendor data ingested from source systems
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_VENDOR (
    RAW_VENDOR_ID       VARCHAR(50),
    VENDOR_NAME         VARCHAR(255),
    VENDOR_CODE         VARCHAR(50),
    COUNTRY             VARCHAR(100),
    CONTACT_EMAIL       VARCHAR(255),
    CONTACT_PHONE       VARCHAR(50),
    PAYMENT_TERMS       VARCHAR(50),
    CURRENCY            VARCHAR(10),
    STATUS              VARCHAR(20),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
