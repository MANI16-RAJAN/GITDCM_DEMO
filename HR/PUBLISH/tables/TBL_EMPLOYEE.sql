-- =============================================================
-- Table       : TBL_EMPLOYEE
-- Schema      : PUBLISH | Database : HR_DEV
-- Description : Published employee dimension table
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_EMPLOYEE (
    EMPLOYEE_KEY        NUMBER AUTOINCREMENT PRIMARY KEY,
    EMPLOYEE_ID         VARCHAR(50) NOT NULL UNIQUE,
    EMPLOYEE_NUMBER     VARCHAR(50),
    FULL_NAME           VARCHAR(255),
    EMAIL               VARCHAR(255),
    GENDER              VARCHAR(20),
    AGE_BAND            VARCHAR(20),
    HIRE_DATE           DATE,
    TERMINATION_DATE    DATE,
    TENURE_YEARS        NUMBER(5,2),
    JOB_TITLE           VARCHAR(100),
    JOB_LEVEL           VARCHAR(50),
    DEPARTMENT_KEY      NUMBER,
    EMPLOYMENT_TYPE     VARCHAR(50),
    WORK_LOCATION       VARCHAR(100),
    SALARY_BAND         VARCHAR(20),
    IS_ACTIVE           BOOLEAN DEFAULT TRUE,
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
