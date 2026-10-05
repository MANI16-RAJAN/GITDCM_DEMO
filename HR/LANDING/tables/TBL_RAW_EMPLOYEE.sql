-- =============================================================
-- Table       : TBL_RAW_EMPLOYEE
-- Schema      : LANDING | Database : HR_DEV
-- Description : Raw employee data ingested from source systems
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_EMPLOYEE (
    RAW_EMPLOYEE_ID     VARCHAR(50),
    EMPLOYEE_NUMBER     VARCHAR(50),
    FIRST_NAME          VARCHAR(100),
    LAST_NAME           VARCHAR(100),
    EMAIL               VARCHAR(255),
    PHONE               VARCHAR(50),
    DATE_OF_BIRTH       VARCHAR(30),
    GENDER              VARCHAR(20),
    HIRE_DATE           VARCHAR(30),
    TERMINATION_DATE    VARCHAR(30),
    JOB_TITLE           VARCHAR(100),
    DEPARTMENT_CODE     VARCHAR(50),
    MANAGER_ID          VARCHAR(50),
    EMPLOYMENT_TYPE     VARCHAR(50),
    WORK_LOCATION       VARCHAR(100),
    SALARY              VARCHAR(50),
    CURRENCY            VARCHAR(10),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
