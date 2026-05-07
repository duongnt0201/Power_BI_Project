-- data_extraction.sql
-- Purpose: Example SQL extraction logic for a Power BI report.
-- Replace table/column names with sanitized equivalents.

SELECT
    report_date,
    department,
    category,
    metric_name,
    metric_value,
    status
FROM sample_fact_metrics
WHERE report_date >= DATE '2026-01-01';
