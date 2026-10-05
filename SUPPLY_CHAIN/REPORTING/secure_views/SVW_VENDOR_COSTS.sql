-- =============================================================
-- Secure View : SVW_VENDOR_COSTS
-- Schema      : REPORTING | Database : SC_DEV
-- Description : Vendor cost details - restricted access
-- =============================================================
USE DATABASE SC_DEV;
USE SCHEMA REPORTING;

CREATE OR REPLACE SECURE VIEW SVW_VENDOR_COSTS AS
SELECT
    v.VENDOR_ID,
    v.VENDOR_NAME,
    v.COUNTRY,
    v.PAYMENT_TERMS,
    v.CURRENCY,
    po.PO_NUMBER,
    po.ORDER_DATE,
    po.TOTAL_AMOUNT,
    po.PO_STATUS
FROM SC_DEV.PUBLISH.TBL_VENDOR v
JOIN SC_DEV.PUBLISH.TBL_PURCHASE_ORDER po ON v.VENDOR_KEY = po.VENDOR_KEY
WHERE v.STATUS = 'ACTIVE';
