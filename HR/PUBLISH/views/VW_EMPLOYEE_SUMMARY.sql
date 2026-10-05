-- =============================================================
-- View        : VW_EMPLOYEE_SUMMARY
-- Schema      : PUBLISH | Database : HR_DEV
-- Description : Employee summary with department and payroll info
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE VIEW VW_EMPLOYEE_SUMMARY AS
SELECT
    e.EMPLOYEE_KEY,
    e.EMPLOYEE_ID,
    e.FULL_NAME,
    e.JOB_TITLE,
    e.JOB_LEVEL,
    d.DEPARTMENT_NAME,
    d.DIVISION,
    e.WORK_LOCATION,
    e.EMPLOYMENT_TYPE,
    e.TENURE_YEARS,
    e.SALARY_BAND,
    e.IS_ACTIVE,
    MAX(p.PAYROLL_PERIOD)               AS LAST_PAYROLL_PERIOD,
    AVG(p.GROSS_SALARY)                 AS AVG_GROSS_SALARY
FROM TBL_EMPLOYEE e
LEFT JOIN TBL_DEPARTMENT d  ON e.DEPARTMENT_KEY = d.DEPARTMENT_KEY
LEFT JOIN TBL_PAYROLL p     ON e.EMPLOYEE_KEY   = p.EMPLOYEE_KEY
GROUP BY
    e.EMPLOYEE_KEY, e.EMPLOYEE_ID, e.FULL_NAME, e.JOB_TITLE,
    e.JOB_LEVEL, d.DEPARTMENT_NAME, d.DIVISION, e.WORK_LOCATION,
    e.EMPLOYMENT_TYPE, e.TENURE_YEARS, e.SALARY_BAND, e.IS_ACTIVE;
