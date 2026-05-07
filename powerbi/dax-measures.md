# DAX Measures

Use this file to document important DAX measures.

```DAX
Total Value = SUM('FactMetrics'[metric_value])

Refresh Count = COUNTROWS('FactRefresh')

Successful Refreshes =
CALCULATE(
    COUNTROWS('FactRefresh'),
    'FactRefresh'[status] = "Success"
)

Refresh Success Rate =
DIVIDE([Successful Refreshes], [Refresh Count])
```

Replace with sanitized measures from your project.
