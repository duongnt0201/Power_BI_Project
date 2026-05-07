# Data Model Documentation

## 1. Model Overview
Describe the model design here.

Recommended approach:

- Use fact and dimension tables where possible.
- Keep relationships simple and readable.
- Avoid unnecessary bi-directional relationships.
- Use a proper Date table for time intelligence.

## 2. Tables

| Table | Type | Granularity | Description |
|---|---|---|---|
| FactMetrics | Fact | One row per date/department/category/metric | Stores KPI values |
| DimDate | Dimension | One row per date | Date attributes |
| DimDepartment | Dimension | One row per department | Business function |
| DimCategory | Dimension | One row per category | Product/segment/category |

## 3. Relationships

| From Table | From Column | To Table | To Column | Cardinality | Filter Direction |
|---|---|---|---|---|---|
| FactMetrics | date | DimDate | date | Many-to-one | Single |
| FactMetrics | department | DimDepartment | department | Many-to-one | Single |
| FactMetrics | category | DimCategory | category | Many-to-one | Single |

## 4. Optimization Notes

- Remove unused columns before loading into the model.
- Prefer numeric surrogate keys when available.
- Avoid loading raw text columns that are not used in visuals or calculations.
- Move heavy transformations upstream to SQL when possible.
