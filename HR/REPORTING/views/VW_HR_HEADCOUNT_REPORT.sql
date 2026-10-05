-- =============================================================
-- View        : VW_HR_HEADCOUNT_REPORT
-- Schema      : REPORTING | Database : HR_DEV
-- Description : HR headcount reporting view
-- =============================================================
USE DATABASE HR_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE VIEW VW_HR_HEADCOUNT_REPORT AS
SELECT
    d.DEPARTMENT_NAME,
    d.DIVISION,
    d.LOCATION,
    e.EMPLOYMENT_TYPE,
    e.WORK_LOCATION,
    e.JOB_LEVEL,
    COUNT(e.EMPLOYEE_KEY)                               AS HEADCOUNT,
    SUM(CASE WHEN e.IS_ACTIVE THEN 1 ELSE 0 END)        AS ACTIVE_COUNT,
    AVG(e.TENURE_YEARS)                                 AS AVG_TENURE_YEARS
FROM HR_DEV.PUBLISH.TBL_EMPLOYEE e
JOIN HR_DEV.PUBLISH.TBL_DEPARTMENT d ON e.DEPARTMENT_KEY = d.DEPARTMENT_KEY
GROUP BY
    d.DEPARTMENT_NAME, d.DIVISION, d.LOCATION,
    e.EMPLOYMENT_TYPE, e.WORK_LOCATION, e.JOB_LEVEL;
