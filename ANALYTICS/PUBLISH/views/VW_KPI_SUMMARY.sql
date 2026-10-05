-- =============================================================
-- View        : VW_KPI_SUMMARY
-- Schema      : PUBLISH | Database : ANL_DEV
-- Description : KPI summary with latest values and RAG status
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE VIEW VW_KPI_SUMMARY AS
SELECT
    k.KPI_ID,
    k.KPI_NAME,
    k.BUSINESS_AREA,
    k.KPI_CATEGORY,
    k.UNIT,
    k.TARGET_VALUE,
    m.METRIC_DATE,
    m.METRIC_PERIOD,
    m.ACTUAL_VALUE,
    m.VARIANCE,
    m.VARIANCE_PCT,
    m.RAG_STATUS,
    m.PREV_PERIOD_VALUE,
    m.PERIOD_CHANGE_PCT
FROM TBL_KPI k
JOIN TBL_METRICS m ON k.KPI_KEY = m.KPI_KEY
QUALIFY ROW_NUMBER() OVER (PARTITION BY k.KPI_KEY ORDER BY m.METRIC_DATE DESC) = 1;
