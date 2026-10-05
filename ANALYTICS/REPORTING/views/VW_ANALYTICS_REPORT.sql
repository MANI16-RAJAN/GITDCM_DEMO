-- =============================================================
-- View        : VW_ANALYTICS_REPORT
-- Schema      : REPORTING | Database : ANL_DEV
-- Description : Cross-business-area analytics reporting view
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE VIEW VW_ANALYTICS_REPORT AS
SELECT
    m.METRIC_DATE,
    m.METRIC_PERIOD,
    k.BUSINESS_AREA,
    k.KPI_CATEGORY,
    k.KPI_NAME,
    m.DIMENSION1,
    m.ACTUAL_VALUE,
    m.TARGET_VALUE,
    m.VARIANCE_PCT,
    m.RAG_STATUS,
    m.PERIOD_CHANGE_PCT
FROM ANL_DEV.PUBLISH.TBL_METRICS m
JOIN ANL_DEV.PUBLISH.TBL_KPI k ON m.KPI_KEY = k.KPI_KEY
WHERE k.IS_ACTIVE = TRUE;
