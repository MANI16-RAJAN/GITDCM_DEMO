-- =============================================================
-- Table       : TBL_STG_METRICS
-- Schema      : STAGING | Database : ANL_DEV
-- Description : Cleansed and validated metrics data
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA STAGING;

CREATE OR REPLACE TABLE TBL_STG_METRICS (
    STG_METRIC_KEY      NUMBER AUTOINCREMENT PRIMARY KEY,
    METRIC_ID           VARCHAR(50),
    METRIC_NAME         VARCHAR(255),
    METRIC_CATEGORY     VARCHAR(100),
    BUSINESS_AREA       VARCHAR(100),
    METRIC_DATE         DATE,
    METRIC_PERIOD       VARCHAR(20),
    METRIC_VALUE        NUMBER(28,6),
    METRIC_UNIT         VARCHAR(50),
    DIMENSION1          VARCHAR(255),
    DIMENSION2          VARCHAR(255),
    DIMENSION3          VARCHAR(255),
    IS_VALID            BOOLEAN DEFAULT TRUE,
    VALIDATION_ERRORS   VARCHAR(1000),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
