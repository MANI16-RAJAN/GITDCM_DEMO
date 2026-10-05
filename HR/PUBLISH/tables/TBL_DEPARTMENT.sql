-- =============================================================
-- Table       : TBL_DEPARTMENT
-- Schema      : PUBLISH | Database : HR_DEV
-- Description : Published department dimension table
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_DEPARTMENT (
    DEPARTMENT_KEY          NUMBER AUTOINCREMENT PRIMARY KEY,
    DEPARTMENT_CODE         VARCHAR(50) NOT NULL UNIQUE,
    DEPARTMENT_NAME         VARCHAR(255) NOT NULL,
    DIVISION                VARCHAR(100),
    COST_CENTER             VARCHAR(50),
    MANAGER_EMPLOYEE_KEY    NUMBER,
    LOCATION                VARCHAR(100),
    HEADCOUNT               NUMBER DEFAULT 0,
    STATUS                  VARCHAR(20) DEFAULT 'ACTIVE',
    SOURCE_SYSTEM           VARCHAR(50),
    CREATED_TIMESTAMP       TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP       TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
