-- =============================================================
-- Table       : TBL_PRODUCT
-- Schema      : PUBLISH | Database : CUST_DEV
-- Description : Published product dimension table
-- =============================================================
USE DATABASE CUST_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_PRODUCT (
    PRODUCT_KEY         NUMBER AUTOINCREMENT PRIMARY KEY,
    PRODUCT_ID          VARCHAR(50) NOT NULL UNIQUE,
    PRODUCT_NAME        VARCHAR(255),
    PRODUCT_CODE        VARCHAR(50),
    CATEGORY            VARCHAR(100),
    SUB_CATEGORY        VARCHAR(100),
    BRAND               VARCHAR(100),
    UNIT_PRICE          NUMBER(18,4),
    COST_PRICE          NUMBER(18,4),
    MARGIN_PCT          NUMBER(5,2),
    CURRENCY            VARCHAR(10) DEFAULT 'USD',
    IS_ACTIVE           BOOLEAN DEFAULT TRUE,
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
