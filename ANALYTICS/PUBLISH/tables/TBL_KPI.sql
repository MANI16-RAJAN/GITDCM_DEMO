-- =============================================================
-- Table       : TBL_KPI
-- Schema      : PUBLISH | Database : ANL_DEV
-- Description : Published KPI dimension table
-- =============================================================
USE DATABASE ANL_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_KPI (
    KPI_KEY             NUMBER AUTOINCREMENT PRIMARY KEY,
    KPI_ID              VARCHAR(50) NOT NULL UNIQUE,
    KPI_NAME            VARCHAR(255) NOT NULL,
    KPI_DESCRIPTION     VARCHAR(1000),
    BUSINESS_AREA       VARCHAR(100),
    KPI_CATEGORY        VARCHAR(100),
    CALCULATION_METHOD  VARCHAR(255),
    UNIT                VARCHAR(50),
    FREQUENCY           VARCHAR(20),
    TARGET_VALUE        NUMBER(28,6),
    THRESHOLD_GREEN     NUMBER(28,6),
    THRESHOLD_AMBER     NUMBER(28,6),
    THRESHOLD_RED       NUMBER(28,6),
    IS_ACTIVE           BOOLEAN DEFAULT TRUE,
    OWNER               VARCHAR(100),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
