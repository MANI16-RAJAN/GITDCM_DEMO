-- =============================================================
-- Table       : TBL_CUR_METRICS
-- Schema      : CURATED | Database : ANL_DEV
-- Description : Curated metrics with period-over-period calculations
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_METRICS (
    METRIC_KEY          NUMBER AUTOINCREMENT PRIMARY KEY,
    METRIC_ID           VARCHAR(50) NOT NULL,
    METRIC_NAME         VARCHAR(255) NOT NULL,
    METRIC_CATEGORY     VARCHAR(100),
    BUSINESS_AREA       VARCHAR(100),
    METRIC_DATE         DATE,
    METRIC_PERIOD       VARCHAR(20),
    METRIC_VALUE        NUMBER(28,6),
    PREV_PERIOD_VALUE   NUMBER(28,6),
    PERIOD_CHANGE       NUMBER(28,6),
    PERIOD_CHANGE_PCT   NUMBER(10,4),
    METRIC_UNIT         VARCHAR(50),
    DIMENSION1          VARCHAR(255),
    DIMENSION2          VARCHAR(255),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
