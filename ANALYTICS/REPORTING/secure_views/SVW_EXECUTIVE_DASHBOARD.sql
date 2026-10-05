-- =============================================================
-- Secure View : SVW_EXECUTIVE_DASHBOARD
-- Schema      : REPORTING | Database : ANL_DEV
-- Description : Executive dashboard - C-suite restricted
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_EXECUTIVE_DASHBOARD AS
SELECT
    k.BUSINESS_AREA,
    k.KPI_NAME,
    k.KPI_CATEGORY,
    m.METRIC_PERIOD,
    m.METRIC_DATE,
    m.ACTUAL_VALUE,
    m.TARGET_VALUE,
    m.VARIANCE,
    m.VARIANCE_PCT,
    m.RAG_STATUS,
    m.PERIOD_CHANGE_PCT,
    k.UNIT
FROM ANL_DEV.PUBLISH.TBL_METRICS m
JOIN ANL_DEV.PUBLISH.TBL_KPI k ON m.KPI_KEY = k.KPI_KEY
WHERE k.IS_ACTIVE = TRUE
  AND m.METRIC_DATE >= DATEADD('MONTH', -12, CURRENT_DATE());
