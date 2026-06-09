select "Store" as "store",
    "Date" as "date",
    "Weekly_Sales" as "weekly_sales",
    "Holiday_Flag" as "holiday_flag",
    "Temperature" as "temperature",
    "Fuel_Price" as "fuel_price",
    "CPI" as "cpi",
    "Unemployment" as "unemployment",
    'KAGGLE_WALMART_MACRO' as "data_source"
from walmart_sales ws
where "Weekly_Sales" > 0
    and "Holiday_Flag" = 0
    and "Fuel_Price" > 2.5
    and "Store" is not null;