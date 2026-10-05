-- =============================================================
-- Table       : TBL_PURCHASE_ORDER
-- Schema      : PUBLISH | Database : SC_DEV
-- Description : Published purchase order fact table
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA PUBLISH;

CREATE OR REPLACE TABLE TBL_PURCHASE_ORDER (
    PO_KEY              NUMBER AUTOINCREMENT PRIMARY KEY,
    PO_NUMBER           VARCHAR(50) NOT NULL UNIQUE,
    VENDOR_KEY          NUMBER,
    ORDER_DATE          DATE,
    DELIVERY_DATE       DATE,
    ACTUAL_DELIVERY_DATE DATE,
    PO_STATUS           VARCHAR(30),
    LINE_COUNT          NUMBER DEFAULT 0,
    TOTAL_AMOUNT        NUMBER(18,2),
    CURRENCY            VARCHAR(10) DEFAULT 'USD',
    IS_LATE_DELIVERY    BOOLEAN DEFAULT FALSE,
    DAYS_OVERDUE        NUMBER DEFAULT 0,
    CREATED_BY          VARCHAR(100),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
