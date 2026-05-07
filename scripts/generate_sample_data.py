"""Generate a small synthetic sample dataset for Power BI portfolio demos."""

from __future__ import annotations

import csv
from datetime import date, timedelta
from pathlib import Path
import random

OUTPUT_PATH = Path(__file__).resolve().parents[1] / "data" / "sample" / "generated_sample_data.csv"

DEPARTMENTS = ["Sales", "Marketing", "Operations", "Finance", "HR"]
CATEGORIES = ["A", "B", "C"]
METRICS = ["Revenue", "Spend", "Refresh Duration", "Conversion Rate"]
STATUSES = ["Success", "Success", "Success", "Failed"]


def main() -> None:
    random.seed(42)
    start = date(2026, 1, 1)
    rows = []

    for i in range(60):
        current_date = start + timedelta(days=i)
        for department in DEPARTMENTS:
            rows.append(
                {
                    "date": current_date.isoformat(),
                    "department": department,
                    "category": random.choice(CATEGORIES),
                    "metric_name": random.choice(METRICS),
                    "metric_value": round(random.uniform(10, 1_000_000), 2),
                    "status": random.choice(STATUSES),
                }
            )

    OUTPUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with OUTPUT_PATH.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=rows[0].keys())
        writer.writeheader()
        writer.writerows(rows)

    print(f"Generated {len(rows)} rows at {OUTPUT_PATH}")


if __name__ == "__main__":
    main()
