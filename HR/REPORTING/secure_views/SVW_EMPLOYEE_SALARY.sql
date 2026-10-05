-- =============================================================
-- Secure View : SVW_EMPLOYEE_SALARY
-- Schema      : REPORTING | Database : HR_DEV
-- Description : Salary data - HR restricted
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_EMPLOYEE_SALARY AS
SELECT
    e.EMPLOYEE_ID,
    e.FULL_NAME,
    e.JOB_TITLE,
    e.JOB_LEVEL,
    d.DEPARTMENT_NAME,
    e.SALARY_BAND,
    p.GROSS_SALARY,
    p.BASIC_SALARY,
    p.ALLOWANCES,
    p.BONUSES,
    p.NET_SALARY,
    p.CURRENCY,
    p.PAYROLL_PERIOD
FROM HR_DEV.PUBLISH.TBL_EMPLOYEE e
JOIN HR_DEV.PUBLISH.TBL_DEPARTMENT d ON e.DEPARTMENT_KEY = d.DEPARTMENT_KEY
JOIN HR_DEV.PUBLISH.TBL_PAYROLL p    ON e.EMPLOYEE_KEY   = p.EMPLOYEE_KEY
WHERE e.IS_ACTIVE = TRUE;
