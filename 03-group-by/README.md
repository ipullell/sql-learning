# 03 - GROUP BY

## Overview

This exercise focuses on aggregating data using SQL.

The objective is to transform detailed transactional records into summarized business metrics, a common task in ELT workflows and analytical reporting.

Instead of analyzing individual menu items, the data is grouped at the restaurant level to generate meaningful insights.

---

## Dataset

Source: Restaurant Menu Dataset

Table used in this exercise:

| Column        | Description                 |
| ------------- | --------------------------- |
| item_id       | Unique menu item identifier |
| restaurant_id | Restaurant identifier       |
| price         | Menu item price             |

---

## Learning Objectives

Through this exercise, I practiced:

* GROUP BY
* COUNT()
* AVG()
* MAX()
* ROUND()
* Combining filtering and aggregation
* Ordering aggregated results
* Limiting result sets

---

## Business Scenario

Assume a business analyst wants to understand pricing characteristics across restaurants.

The goal is to answer questions such as:

* How many menu items does each restaurant offer?
* What is the average menu price?
* What is the most expensive menu item available?

This type of summary table is commonly used in reporting, dashboarding, and business intelligence workflows.

---

## Data Processing Flow

This exercise combines concepts learned from previous modules.

### Step 1 - Filter Raw Data

Only menu items priced above $5.00 are included:

```sql
WHERE price > 5.00
```

This ensures that the analysis focuses on meaningful menu items and excludes lower-priced entries.

---

### Step 2 - Aggregate Data

Records are grouped by restaurant:

```sql
GROUP BY restaurant_id
```

Aggregation functions are then applied:

```sql
COUNT(item_id)
AVG(price)
MAX(price)
```

Metrics produced:

| Metric      | Description          |
| ----------- | -------------------- |
| total_items | Number of menu items |
| avg_price   | Average menu price   |
| max_price   | Highest menu price   |

---

### Step 3 - Sort Results

Restaurants are ranked by average menu price:

```sql
ORDER BY avg_price DESC
```

This places the most expensive restaurants at the top of the result set.

---

### Step 4 - Limit Output

Only the top 10 restaurants are returned:

```sql
LIMIT 10
```

This improves readability and reduces unnecessary data retrieval.

---

## SQL Query

```sql
SELECT
    restaurant_id,
    COUNT(item_id) AS total_items,
    ROUND(AVG(price)) AS avg_price,
    MAX(price) AS max_price
FROM menu_items
WHERE price > 5.00
GROUP BY restaurant_id
ORDER BY avg_price DESC
LIMIT 10;
```

---

## ELT Perspective

In a modern ELT workflow:

* Raw transactional data is first filtered.
* Records are grouped into business-level summaries.
* Aggregate tables are created for reporting and analytics.
* Analysts consume summarized datasets instead of millions of detailed records.

This exercise simulates the creation of a simple summary layer.

---

## Key Takeaways

* GROUP BY transforms detailed records into summarized information.
* Aggregation functions help answer business questions quickly.
* Filtering before aggregation improves data quality.
* ORDER BY and LIMIT can be combined with GROUP BY to rank results.
* Aggregated datasets are commonly used in dashboards and reporting systems.

---

## Files

| File      | Description                  |
| --------- | ---------------------------- |
| query.sql | Restaurant aggregation query |
| README.md | Exercise documentation       |

---

## Status

✅ Completed
