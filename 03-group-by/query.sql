select restaurant_id,
    count(item_id) as total_items,
    round(avg(price)) as avg_price,
    max(price) as max_price
from menu_items
where price > 5.00
group by restaurant_id
order by avg_price desc
limit 10;