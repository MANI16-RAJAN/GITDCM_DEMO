-- =============================================================
-- Table       : TBL_CUR_DEPARTMENT
-- Schema      : CURATED | Database : HR_DEV
-- Description : Curated department data
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_DEPARTMENT (
    DEPARTMENT_KEY      NUMBER AUTOINCREMENT PRIMARY KEY,
    DEPT_ID             VARCHAR(50) NOT NULL,
    DEPARTMENT_CODE     VARCHAR(50) NOT NULL,
    DEPARTMENT_NAME     VARCHAR(255) NOT NULL,
    DIVISION            VARCHAR(100),
    COST_CENTER         VARCHAR(50),
    MANAGER_KEY         NUMBER,
    LOCATION            VARCHAR(100),
    HEADCOUNT           NUMBER DEFAULT 0,
    STATUS              VARCHAR(20),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
