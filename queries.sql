-- Средняя цена по городу
SELECT c.name, AVG(p.price)
FROM medicine_prices p
JOIN cities c ON p.city_id = c.id
GROUP BY c.name;

-- Самый дорогой город
SELECT c.name, m.name, MAX(p.price)
FROM medicine_prices p
JOIN cities c ON p.city_id = c.id
JOIN medicines m ON p.medicine_id = m.id
GROUP BY c.name, m.name;

-- Изменение цены
SELECT *,
       LAG(price) OVER (PARTITION BY city_id, medicine_id ORDER BY price_date) AS prev_price
FROM medicine_prices;

-- Проверка индекса
EXPLAIN SELECT * FROM medicine_prices WHERE medicine_id = 1;
-- Где цена выше средней по лекарству (анализ отклонений)
SELECT
    m.name AS medicine_name,
    c.name AS city_name,
    p.price,
    ROUND(AVG(p.price) OVER (PARTITION BY m.id), 2) AS avg_price,
    ROUND(p.price - AVG(p.price) OVER (PARTITION BY m.id), 2) AS diff_from_avg
FROM medicine_prices p
JOIN medicines m ON p.medicine_id = m.id
JOIN cities c ON p.city_id = c.id
WHERE p.price > AVG(p.price) OVER (PARTITION BY m.id)
ORDER BY diff_from_avg DESC;
