-- =============================================================
-- Table       : TBL_CUR_PURCHASE_ORDER
-- Schema      : CURATED | Database : SC_DEV
-- Description : Curated purchase order with business rules applied
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA CURATED;

CREATE OR REPLACE TABLE TBL_CUR_PURCHASE_ORDER (
    PO_KEY              NUMBER AUTOINCREMENT PRIMARY KEY,
    PO_ID               VARCHAR(50) NOT NULL,
    PO_NUMBER           VARCHAR(50) NOT NULL,
    VENDOR_KEY          NUMBER,
    ORDER_DATE          DATE,
    DELIVERY_DATE       DATE,
    ACTUAL_DELIVERY_DATE DATE,
    PO_STATUS           VARCHAR(30),
    TOTAL_AMOUNT        NUMBER(18,2),
    CURRENCY            VARCHAR(10),
    IS_LATE_DELIVERY    BOOLEAN DEFAULT FALSE,
    DAYS_OVERDUE        NUMBER DEFAULT 0,
    CREATED_BY          VARCHAR(100),
    SOURCE_SYSTEM       VARCHAR(50),
    CREATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    UPDATED_TIMESTAMP   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
