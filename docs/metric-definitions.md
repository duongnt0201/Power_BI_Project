# Metric Definitions

| Metric | Business Definition | Calculation Logic | Owner | Notes |
|---|---|---|---|---|
| Total Revenue | Total completed revenue | SUM(amount) | Business team | Replace with actual sanitized logic |
| Conversion Rate | Ratio of converted users to total users | converted_users / total_users | Business team | Define numerator and denominator clearly |
| Refresh Success Rate | Ratio of successful refreshes to total refreshes | successful_refreshes / total_refreshes | BI team | Useful for BI operations |
| Average Refresh Duration | Average duration of refresh process | AVG(duration_minutes) | BI team | Can be tracked by dataset/report |

## DAX Measure Template

```DAX
Total Revenue = SUM('FactTable'[Amount])

Conversion Rate = DIVIDE([Converted Users], [Total Users])
```
