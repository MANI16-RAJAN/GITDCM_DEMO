-- =============================================================
-- Secure View : SVW_HR_PAYROLL
-- Schema      : REPORTING | Database : HR_DEV
-- Description : Full payroll details - finance/HR restricted
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_HR_PAYROLL AS
SELECT
    p.PAYROLL_KEY,
    e.EMPLOYEE_ID,
    e.FULL_NAME,
    d.DEPARTMENT_NAME,
    d.COST_CENTER,
    p.PAYROLL_PERIOD,
    p.PAYROLL_FREQUENCY,
    p.GROSS_SALARY,
    p.DEDUCTIONS,
    p.TAX_AMOUNT,
    p.NET_SALARY,
    p.CURRENCY,
    p.PAYMENT_DATE,
    p.PAYMENT_STATUS
FROM HR_DEV.PUBLISH.TBL_PAYROLL p
JOIN HR_DEV.PUBLISH.TBL_EMPLOYEE e   ON p.EMPLOYEE_KEY   = e.EMPLOYEE_KEY
JOIN HR_DEV.PUBLISH.TBL_DEPARTMENT d ON e.DEPARTMENT_KEY = d.DEPARTMENT_KEY;
