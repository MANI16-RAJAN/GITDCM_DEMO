-- =============================================================
-- Table       : TBL_RAW_PURCHASE_ORDER
-- Schema      : LANDING | Database : SC_DEV
-- Description : Raw purchase order data from source systems
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA LANDING;

CREATE OR REPLACE TABLE TBL_RAW_PURCHASE_ORDER (
    RAW_PO_ID           VARCHAR(50),
    PO_NUMBER           VARCHAR(50),
    VENDOR_ID           VARCHAR(50),
    ORDER_DATE          VARCHAR(30),
    DELIVERY_DATE       VARCHAR(30),
    PO_STATUS           VARCHAR(30),
    TOTAL_AMOUNT        VARCHAR(50),
    CURRENCY            VARCHAR(10),
    CREATED_BY          VARCHAR(100),
    SOURCE_SYSTEM       VARCHAR(50),
    LOAD_TIMESTAMP      TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    SOURCE_FILE_NAME    VARCHAR(255)
);
