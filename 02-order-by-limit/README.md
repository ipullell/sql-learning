# 02 - ORDER BY & LIMIT

## Overview

This exercise focuses on sorting and limiting data using SQL.

The objective is to simulate a simple data profiling task commonly performed during ELT workflows to identify extreme values, trends, and potential business insights from cleaned datasets.

---

## Dataset

Source: Restaurant Menu Dataset

Table used in this exercise:

| Column | Description |
|----------|------------|
| item_id | Unique menu item identifier |
| restaurant_id | Restaurant identifier |
| price | Menu item price |

---

## Learning Objectives

Through this exercise, I practiced:

- ORDER BY
- ASC and DESC sorting
- LIMIT
- Data profiling techniques
- Identifying extreme values within a dataset

---

## Business Scenario

Assume a data analyst wants to identify the most expensive menu items available across restaurants.

Instead of reviewing the entire dataset, SQL can be used to sort records by price and return only the most relevant results.

This type of query is commonly used for:

- Price analysis
- Outlier detection
- Business reporting
- Data quality checks

---

## Transformations Applied

### Sorting Data

The dataset is sorted by price in descending order:

```sql
ORDER BY price DESC
```

This places the most expensive menu items at the top of the result set.

---

### Limiting Results

The query only returns the first five rows:

```sql
LIMIT 5
```

This helps focus on the most relevant records while reducing unnecessary data retrieval.

---

## Performance Consideration

When exploring large datasets, retrieving every record is often unnecessary.

Using `LIMIT`:

- Reduces query execution time
- Minimizes resource usage
- Improves exploration efficiency
- Helps analysts quickly inspect data

This is a common practice when working with large tables in data warehouses.

---

## SQL Query

```sql
SELECT item_id,
       restaurant_id,
       price
FROM menu_items
ORDER BY price DESC
LIMIT 5;
```

---

## Key Takeaways

- ORDER BY controls how data is sorted.
- DESC sorts values from highest to lowest.
- LIMIT restricts the number of returned rows.
- Combining ORDER BY and LIMIT is useful for finding top-performing or extreme values.
- Data profiling is an important step in ELT workflows.

---

## Files

| File | Description |
|--------|------------|
| query.sql | SQL query for sorting and limiting menu item data |
| README.md | Exercise documentation |

---

## Status

✅ Completed