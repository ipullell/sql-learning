# 01 - SELECT & WHERE

## Overview

This exercise focuses on learning the fundamentals of SQL data retrieval and filtering using a Walmart sales dataset.

The objective is to simulate a simple staging-layer transformation commonly found in ETL/ELT pipelines by selecting, renaming, and filtering raw data before it moves to downstream analytics layers.

---

## Dataset

Source: Walmart Sales Dataset

Columns used in this exercise:

| Column | Description |
|----------|------------|
| Store | Store identifier |
| Date | Weekly sales record date |
| Weekly_Sales | Weekly sales amount |
| Holiday_Flag | Indicates whether the week contains a holiday |
| Temperature | Average temperature |
| Fuel_Price | Fuel price during the week |

---

## Learning Objectives

Through this exercise, I practiced:

- SELECT statements
- Column aliasing using `AS`
- Filtering records using `WHERE`
- Combining multiple conditions using `AND`
- Handling missing values with `IS NOT NULL`
- Creating metadata columns

---

## Business Scenario

Assume a data team wants to prepare clean sales data for analytics.

Only valid and relevant records should be included in the staging layer.

The requirements are:

- Weekly sales must be greater than zero
- Store ID must not be null
- Only non-holiday weeks are included
- Fuel price must be above 2.5

Additionally, column names should follow a standardized naming convention.

---

## Transformations Applied

### Column Standardization

| Original Column | New Column |
|----------------|------------|
| Store | store_id |
| Date | recorded_date |
| Weekly_Sales | weekly_sales_amount |
| Holiday_Flag | is_holiday |

---

### Metadata Column

Added:

```sql
'KAGGLE_WALMART_MACRO' AS data_source
```

Purpose:

- Track data origin
- Improve data lineage
- Support future ETL pipelines

---

### Data Filtering

Applied the following conditions:

```sql
Weekly_Sales > 0
AND Holiday_Flag = 0
AND Fuel_Price > 2.5
AND Store IS NOT NULL
```

---

## Key Takeaways

- SQL can be used not only for querying data but also for performing basic transformations.
- Standardized column names improve consistency across data pipelines.
- Filtering data early helps improve downstream data quality.
- Metadata columns are commonly used in ETL/ELT workflows for traceability.

---

## Files

| File | Description |
|--------|------------|
| stg_walmart_macro.sql | Staging-layer transformation query |
| README.md | Exercise documentation |

---

## Status

✅ Completed