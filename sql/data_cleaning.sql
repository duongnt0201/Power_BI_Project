-- data_cleaning.sql
-- Purpose: Example cleaning/transformation logic.

WITH cleaned AS (
    SELECT
        CAST(report_date AS DATE) AS report_date,
        TRIM(department) AS department,
        TRIM(category) AS category,
        TRIM(metric_name) AS metric_name,
        CAST(metric_value AS DECIMAL(18, 2)) AS metric_value,
        CASE
            WHEN status IN ('Success', 'Completed') THEN 'Success'
            WHEN status IN ('Failed', 'Error') THEN 'Failed'
            ELSE 'Other'
        END AS normalized_status
    FROM sample_fact_metrics
)
SELECT *
FROM cleaned;
