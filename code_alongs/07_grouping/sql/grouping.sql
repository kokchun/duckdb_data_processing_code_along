SELECT
    food,
    SUM(number_searches) AS total_search,
    COUNT(*) AS number_rows
FROM cleaned_food
GROUP BY food
ORDER BY total_search DESC
LIMIT 10;

-- total searches by year
SELECT
    year,
    SUM(number_searches) AS total_searches
FROM cleaned_food
GROUP BY year
ORDER BY year;


-- total searches by year
-- filter out seraches over 350K
SELECT
    year,
    SUM(number_searches) AS total_searches
FROM cleaned_food
GROUP BY year
HAVING total_searches > 350_000
ORDER BY year;


SELECT
    food,
    year,
    SUM(number_searches) AS total_searches
FROM cleaned_food
GROUP BY food, year
HAVING food IN ('sushi', 'beer')
ORDER BY year, food;
