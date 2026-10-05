-- =============================================================
-- Table       : TBL_STG_CUSTOMER
-- Schema      : STAGING | Database : CUST_DEV
-- Description : Cleansed and validated customer data
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_CUSTOMER (
    STG_CUSTOMER_KEY    NUMBER AUTOINCREMENT PRIMARY KEY,
    CUSTOMER_ID         VARCHAR(50),
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    FULL_NAME           VARCHAR(255),
    EMAIL               VARCHAR(255),
    PHONE               VARCHAR(50),
    DATE_OF_BIRTH       DATE,
    GENDER              VARCHAR(20),
    ADDRESS_LINE1       VARCHAR(255),
    CITY                VARCHAR(100),
    STATE               VARCHAR(100),
    COUNTRY             VARCHAR(100),
    POSTAL_CODE         VARCHAR(20),
    CUSTOMER_SEGMENT    VARCHAR(50),
    REGISTRATION_DATE   DATE,
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
