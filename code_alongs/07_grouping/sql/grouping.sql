SELECT
    food,
    SUM(number_searches) AS total_search
FROM cleaned_food
GROUP BY food;