-- =============================================================
-- Secure View : SVW_INVENTORY_VALUATION
-- Schema      : REPORTING | Database : SC_DEV
-- Description : Inventory valuation - finance restricted
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_INVENTORY_VALUATION AS
SELECT
    PRODUCT_CODE,
    PRODUCT_NAME,
    WAREHOUSE_CODE,
    WAREHOUSE_LOCATION,
    QUANTITY_ON_HAND,
    QUANTITY_AVAILABLE,
    UNIT_COST,
    TOTAL_VALUE,
    AS_OF_DATE
FROM SC_DEV.PUBLISH.TBL_INVENTORY;
