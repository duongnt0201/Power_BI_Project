# Power BI Project Portfolio Template

## 1. Overview
This repository is a portfolio-ready template for documenting and publishing a Power BI project on GitHub.

The goal is to present the project in a professional way without exposing confidential company data, credentials, internal database names, workspace IDs, report IDs, or business-sensitive information.

> Status: Template. Replace sample placeholders with your own sanitized data, screenshots, SQL, DAX, and documentation.

---

## 2. Business Context
Describe the business background of the report/dashboard here.

Example:

- Department: Sales / Marketing / Finance / Operations / BI Operations
- Business users: Managers, analysts, operations team, leadership team
- Main business problem: Monitoring performance, reducing manual work, improving visibility, tracking KPIs, optimizing report refresh, etc.

---

## 3. Business Problem
Explain the problem this Power BI project solves.

Suggested format:

```text
Before this report:
- Data was tracked manually across multiple sources.
- Reports were slow, inconsistent, or not well documented.
- Stakeholders lacked a centralized view of key metrics.

After this report:
- KPIs are centralized in one dashboard.
- Data refresh and reporting workflow are easier to monitor.
- Stakeholders can make faster and more consistent decisions.
```

---

## 4. Project Objectives

- Build a clean and reliable Power BI report/dashboard.
- Define key metrics and business logic clearly.
- Create a scalable report-level data model.
- Optimize refresh performance and dataset size.
- Document data sources, transformations, DAX measures, and report usage.
- Provide a sanitized portfolio version suitable for GitHub.

---

## 5. Dataset

> Use only public, sample, masked, or synthetic data.

| Dataset | Description | Source | Status |
|---|---|---|---|
| sample_data.csv | Sample data for demonstration | Synthetic / anonymized | To be updated |
| data_dictionary.md | Field definitions | Manual documentation | Available |

Do not upload:

- Real company data
- Customer/student/user data
- Internal revenue or financial data
- Raw database exports
- Files containing credentials or connection strings

---

## 6. Data Model

Add a screenshot of your Power BI data model here:

```markdown
![Data Model](screenshots/data-model.png)
```

Suggested documentation:

- Fact tables
- Dimension tables
- Table relationships
- Granularity
- Date table logic
- Filter direction
- Key calculated columns and measures

---

## 7. Key Metrics

| Metric | Definition | Formula / Logic | Notes |
|---|---|---|---|
| Total Revenue | Total amount from completed transactions | SUM(amount) | Replace with your metric |
| Conversion Rate | Converted users / total users | converted_users / total_users | Replace with your metric |
| Refresh Success Rate | Successful refreshes / total refreshes | success_count / refresh_count | Useful for BI operations |
| Average Refresh Duration | Average refresh time | AVG(duration_minutes) | Useful for performance monitoring |

More details can be added in `docs/metric-definitions.md`.

---

## 8. Dashboard Pages

| Page | Purpose | Main Users |
|---|---|---|
| Overview | Executive KPI summary | Management |
| Detail Analysis | Drill-down by product/team/category/time | Analysts / Operators |
| Refresh Monitoring | Track refresh status, failures, duration | BI team |

Add screenshots:

```markdown
![Dashboard Overview](screenshots/dashboard-overview.png)
![Dashboard Detail](screenshots/dashboard-detail.png)
```

---

## 9. Technical Approach

### Data Preparation

- Cleaned and transformed raw data using Power Query / SQL / Python.
- Standardized field names, data types, and business logic.
- Removed unnecessary columns and tables to reduce dataset size.

### Data Modeling

- Built a star-schema-style model where possible.
- Separated fact and dimension tables.
- Created reusable DAX measures for core KPIs.

### Report Optimization

- Reduced unnecessary data load.
- Optimized SQL queries before loading into Power BI.
- Improved model structure and refresh performance.
- Used Import mode where appropriate.

---

## 10. Tech Stack

- Power BI
- DAX
- Power Query
- SQL
- Python, optional
- Power BI REST API, optional
- SQLite / local database, optional
- GitHub for documentation and portfolio publishing

---

## 11. Repository Structure

```text
powerbi-project/
│
├── README.md
├── .gitignore
├── .env.example
│
├── data/
│   ├── raw/
│   ├── sample/
│   │   └── sample_data.csv
│   └── data_dictionary.md
│
├── docs/
│   ├── business-requirements.md
│   ├── metric-definitions.md
│   ├── report-documentation.md
│   ├── data-model-documentation.md
│   ├── sanitize-checklist.md
│   └── github-publishing-checklist.md
│
├── powerbi/
│   └── README.md
│
├── screenshots/
│   └── README.md
│
├── sql/
│   ├── README.md
│   ├── data_extraction.sql
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── scripts/
│   ├── README.md
│   └── generate_sample_data.py
│
└── assets/
    └── mindmap.md
```

---

## 12. Key Insights

Replace this section with your actual insights after adding data.

Example:

- Insight 1: Which segment/product/team has the highest contribution?
- Insight 2: Which KPI changed significantly over time?
- Insight 3: Which operational issue can be identified from the report?
- Insight 4: What action should business users take?

---

## 13. What I Learned

Suggested points:

- How to translate business requirements into a Power BI report.
- How to design a maintainable data model.
- How to write reusable DAX measures.
- How to optimize dataset refresh and report performance.
- How to document a BI project for portfolio and knowledge transfer.

---

## 14. Privacy Notice

This repository does not contain confidential company data. All datasets, IDs, table names, screenshots, and business metrics should be public, synthetic, masked, or anonymized before publishing.
