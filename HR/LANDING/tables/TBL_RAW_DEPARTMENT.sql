-- =============================================================
-- Table       : TBL_RAW_DEPARTMENT
-- Schema      : LANDING | Database : HR_DEV
-- Description : Raw department data from source systems
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_DEPARTMENT (
    RAW_DEPT_ID         VARCHAR(50),
    DEPARTMENT_CODE     VARCHAR(50),
    DEPARTMENT_NAME     VARCHAR(255),
    DIVISION            VARCHAR(100),
    COST_CENTER         VARCHAR(50),
    MANAGER_ID          VARCHAR(50),
    LOCATION            VARCHAR(100),
    STATUS              VARCHAR(20),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
