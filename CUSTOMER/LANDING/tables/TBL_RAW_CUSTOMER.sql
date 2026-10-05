-- =============================================================
-- Table       : TBL_RAW_CUSTOMER
-- Schema      : LANDING | Database : CUST_DEV
-- Description : Raw customer data ingested from source systems
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_CUSTOMER (
    RAW_CUSTOMER_ID     VARCHAR(50),
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    EMAIL               VARCHAR(255),
    PHONE               VARCHAR(50),
    DATE_OF_BIRTH       VARCHAR(30),
    GENDER              VARCHAR(20),
    ADDRESS_LINE1       VARCHAR(255),
    CITY                VARCHAR(100),
    STATE               VARCHAR(100),
    COUNTRY             VARCHAR(100),
    POSTAL_CODE         VARCHAR(20),
    CUSTOMER_SEGMENT    VARCHAR(50),
    REGISTRATION_DATE   VARCHAR(30),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
