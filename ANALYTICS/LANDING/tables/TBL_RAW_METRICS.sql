-- =============================================================
-- Table       : TBL_RAW_METRICS
-- Schema      : LANDING | Database : ANL_DEV
-- Description : Raw metrics data from all business areas
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_METRICS (
    RAW_METRIC_ID       VARCHAR(50),
    METRIC_NAME         VARCHAR(255),
    METRIC_CATEGORY     VARCHAR(100),
    BUSINESS_AREA       VARCHAR(100),
    METRIC_DATE         VARCHAR(30),
    METRIC_PERIOD       VARCHAR(20),
    METRIC_VALUE        VARCHAR(100),
    METRIC_UNIT         VARCHAR(50),
    DIMENSION1          VARCHAR(255),
    DIMENSION2          VARCHAR(255),
    DIMENSION3          VARCHAR(255),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
