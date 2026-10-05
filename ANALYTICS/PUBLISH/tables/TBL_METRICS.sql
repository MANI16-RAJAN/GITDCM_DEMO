-- =============================================================
-- Table       : TBL_METRICS
-- Schema      : PUBLISH | Database : ANL_DEV
-- Description : Published metrics fact table
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_METRICS (
    METRICS_KEY         NUMBER AUTOINCREMENT PRIMARY KEY,
    KPI_KEY             NUMBER,
    METRIC_DATE         DATE,
    METRIC_PERIOD       VARCHAR(20),
    BUSINESS_AREA       VARCHAR(100),
    DIMENSION1          VARCHAR(255),
    DIMENSION2          VARCHAR(255),
    ACTUAL_VALUE        NUMBER(28,6),
    TARGET_VALUE        NUMBER(28,6),
    VARIANCE            NUMBER(28,6),
    VARIANCE_PCT        NUMBER(10,4),
    RAG_STATUS          VARCHAR(10),
    PREV_PERIOD_VALUE   NUMBER(28,6),
    PERIOD_CHANGE_PCT   NUMBER(10,4),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
