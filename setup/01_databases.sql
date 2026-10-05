-- =============================================================
-- Script      : 01_databases.sql
-- Description : Create all 16 databases (4 Business Areas x 4 Envs)
-- =============================================================
USE ROLE SYSADMIN;

-- ── Supply Chain ───────────────────────────────────────────────
CREATE DATABASE IF NOT EXISTS SC_DEV  COMMENT = 'Supply Chain - Development';
CREATE DATABASE IF NOT EXISTS SC_QA   COMMENT = 'Supply Chain - QA';
CREATE DATABASE IF NOT EXISTS SC_PPD  COMMENT = 'Supply Chain - Pre-Production';
CREATE DATABASE IF NOT EXISTS SC_PROD COMMENT = 'Supply Chain - Production';

-- ── Customer ───────────────────────────────────────────────────
CREATE DATABASE IF NOT EXISTS CUST_DEV  COMMENT = 'Customer - Development';
CREATE DATABASE IF NOT EXISTS CUST_QA   COMMENT = 'Customer - QA';
CREATE DATABASE IF NOT EXISTS CUST_PPD  COMMENT = 'Customer - Pre-Production';
CREATE DATABASE IF NOT EXISTS CUST_PROD COMMENT = 'Customer - Production';

-- ── HR ─────────────────────────────────────────────────────────
CREATE DATABASE IF NOT EXISTS HR_DEV  COMMENT = 'HR - Development';
CREATE DATABASE IF NOT EXISTS HR_QA   COMMENT = 'HR - QA';
CREATE DATABASE IF NOT EXISTS HR_PPD  COMMENT = 'HR - Pre-Production';
CREATE DATABASE IF NOT EXISTS HR_PROD COMMENT = 'HR - Production';

-- ── Analytics ──────────────────────────────────────────────────
CREATE DATABASE IF NOT EXISTS ANL_DEV  COMMENT = 'Analytics - Development';
CREATE DATABASE IF NOT EXISTS ANL_QA   COMMENT = 'Analytics - QA';
CREATE DATABASE IF NOT EXISTS ANL_PPD  COMMENT = 'Analytics - Pre-Production';
CREATE DATABASE IF NOT EXISTS ANL_PROD COMMENT = 'Analytics - Production';
