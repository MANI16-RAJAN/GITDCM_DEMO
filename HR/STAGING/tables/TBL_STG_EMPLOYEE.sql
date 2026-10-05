-- =============================================================
-- Table       : TBL_STG_EMPLOYEE
-- Schema      : STAGING | Database : HR_DEV
-- Description : Cleansed and validated employee data
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_EMPLOYEE (
    STG_EMPLOYEE_KEY    NUMBER AUTOINCREMENT PRIMARY KEY,
    EMPLOYEE_ID         VARCHAR(50),
    EMPLOYEE_NUMBER     VARCHAR(50),
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    FULL_NAME           VARCHAR(255),
    EMAIL               VARCHAR(255),
    PHONE               VARCHAR(50),
    DATE_OF_BIRTH       DATE,
    GENDER              VARCHAR(20),
    HIRE_DATE           DATE,
    TERMINATION_DATE    DATE,
    JOB_TITLE           VARCHAR(100),
    DEPARTMENT_CODE     VARCHAR(50),
    MANAGER_ID          VARCHAR(50),
    EMPLOYMENT_TYPE     VARCHAR(50),
    WORK_LOCATION       VARCHAR(100),
    SALARY              NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
