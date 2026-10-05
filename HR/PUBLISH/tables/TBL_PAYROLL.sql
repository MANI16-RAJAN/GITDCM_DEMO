-- =============================================================
-- Table       : TBL_PAYROLL
-- Schema      : PUBLISH | Database : HR_DEV
-- Description : Published payroll fact table
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_PAYROLL (
    PAYROLL_KEY         NUMBER AUTOINCREMENT PRIMARY KEY,
    EMPLOYEE_KEY        NUMBER,
    PAYROLL_PERIOD      DATE,
    PAYROLL_FREQUENCY   VARCHAR(20),
    GROSS_SALARY        NUMBER(18,2),
    BASIC_SALARY        NUMBER(18,2),
    ALLOWANCES          NUMBER(18,2) DEFAULT 0,
    BONUSES             NUMBER(18,2) DEFAULT 0,
    DEDUCTIONS          NUMBER(18,2) DEFAULT 0,
    TAX_AMOUNT          NUMBER(18,2),
    NET_SALARY          NUMBER(18,2),
    CURRENCY            VARCHAR(10) DEFAULT 'USD',
    PAYMENT_DATE        DATE,
    PAYMENT_STATUS      VARCHAR(20),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
