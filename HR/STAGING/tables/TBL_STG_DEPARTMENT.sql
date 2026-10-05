-- =============================================================
-- Table       : TBL_STG_DEPARTMENT
-- Schema      : STAGING | Database : HR_DEV
-- Description : Cleansed and validated department data
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_DEPARTMENT (
    STG_DEPT_KEY        NUMBER AUTOINCREMENT PRIMARY KEY,
    DEPT_ID             VARCHAR(50),
    DEPARTMENT_CODE     VARCHAR(50),
    DEPARTMENT_NAME     VARCHAR(255),
    DIVISION            VARCHAR(100),
    COST_CENTER         VARCHAR(50),
    MANAGER_ID          VARCHAR(50),
    LOCATION            VARCHAR(100),
    STATUS              VARCHAR(20),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
