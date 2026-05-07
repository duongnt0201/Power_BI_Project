-- analysis_queries.sql
-- Purpose: Example validation and analysis queries.

-- Refresh success rate by department
SELECT
    department,
    COUNT(*) AS refresh_count,
    SUM(CASE WHEN status = 'Success' THEN 1 ELSE 0 END) AS success_count,
    1.0 * SUM(CASE WHEN status = 'Success' THEN 1 ELSE 0 END) / COUNT(*) AS success_rate
FROM sample_fact_metrics
GROUP BY department;

-- Average metric value by category
SELECT
    category,
    AVG(metric_value) AS avg_metric_value
FROM sample_fact_metrics
GROUP BY category;
