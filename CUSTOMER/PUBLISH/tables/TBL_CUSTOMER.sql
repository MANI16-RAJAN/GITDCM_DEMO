-- =============================================================
-- Table       : TBL_CUSTOMER
-- Schema      : PUBLISH | Database : CUST_DEV
-- Description : Published customer dimension table
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_CUSTOMER (
    CUSTOMER_KEY        NUMBER AUTOINCREMENT PRIMARY KEY,
    CUSTOMER_ID         VARCHAR(50) NOT NULL UNIQUE,
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    FULL_NAME           VARCHAR(255),
    EMAIL               VARCHAR(255),
    PHONE               VARCHAR(50),
    DATE_OF_BIRTH       DATE,
    AGE                 NUMBER,
    AGE_BAND            VARCHAR(20),
    GENDER              VARCHAR(20),
    CITY                VARCHAR(100),
    STATE               VARCHAR(100),
    COUNTRY             VARCHAR(100),
    POSTAL_CODE         VARCHAR(20),
    CUSTOMER_SEGMENT    VARCHAR(50),
    LIFETIME_VALUE_BAND VARCHAR(20),
    REGISTRATION_DATE   DATE,
    IS_ACTIVE           BOOLEAN DEFAULT TRUE,
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
