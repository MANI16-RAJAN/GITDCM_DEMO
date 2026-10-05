-- =============================================================
-- Table       : TBL_CUR_EMPLOYEE
-- Schema      : CURATED | Database : HR_DEV
-- Description : Curated employee data with business rules (SCD Type 2)
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_EMPLOYEE (
    EMPLOYEE_KEY        NUMBER AUTOINCREMENT PRIMARY KEY,
    EMPLOYEE_ID         VARCHAR(50) NOT NULL,
    EMPLOYEE_NUMBER     VARCHAR(50),
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    FULL_NAME           VARCHAR(255),
    EMAIL               VARCHAR(255),
    DATE_OF_BIRTH       DATE,
    AGE                 NUMBER,
    GENDER              VARCHAR(20),
    HIRE_DATE           DATE,
    TERMINATION_DATE    DATE,
    TENURE_YEARS        NUMBER(5,2),
    JOB_TITLE           VARCHAR(100),
    JOB_LEVEL           VARCHAR(50),
    DEPARTMENT_CODE     VARCHAR(50),
    EMPLOYMENT_TYPE     VARCHAR(50),
    WORK_LOCATION       VARCHAR(100),
    SALARY              NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    SALARY_BAND         VARCHAR(20),
    IS_ACTIVE           BOOLEAN DEFAULT TRUE,
    SOURCE_SYSTEM       VARCHAR(50),
    EFFECTIVE_DATE      DATE,
    EXPIRY_DATE         DATE,
    IS_CURRENT          BOOLEAN DEFAULT TRUE,
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
