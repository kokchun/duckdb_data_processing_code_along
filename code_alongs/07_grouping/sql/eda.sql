FROM
    food;

-- 135025 rows
SELECT
    COUNT(*)
FROM
    food;

-- 201 unique food
SELECT
    COUNT(DISTINCT id)
FROM
    food;

SELECT DISTINCT
    id AS food
FROM
    food
ORDER BY
    food
LIMIT
    20;

FROM
    food
LIMIT
    2;

SELECT DISTINCT
    week_id
FROM
    food
ORDER BY week_id;

SELECT * FROM food WHERE week_id BETWEEN '2016-38' AND '2016-42';
