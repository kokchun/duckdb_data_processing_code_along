SELECT
    quote,
    UPPER(quote) AS stora,
    LOWER(quote)
FROM
    (
        SELECT
            'I stand on the shoulders of GIANTS - Newton' AS quote
    );

-- working with our dataset
SELECT
    *
FROM
    staging.sql_glossary
LIMIT
    5;

-- concatenate, trim, upper
SELECT
    CONCAT (sql_word, ' command') AS concat,
    sql_word || ' command' AS "||",
    UPPER(TRIM(sql_word)) || ' command' AS clean
FROM
    staging.sql_glossary;



SELECT
    UPPER(TRIM(sql_word)) AS sql_word,
    TRIM(REGEXP_REPLACE (description, ' +', ' ', 'g')) AS description,
    REGEXP_REPLACE (
        UPPER(TRIM(REGEXP_REPLACE (example, ' +', ' ', 'g'))),
        ' ([;,])',
        '\1',
        'g'
    ) AS example
FROM
    staging.sql_glossary;


SELECT
    *
FROM staging.sql_glossary
WHERE example ILIKE 'select%';


SELECT
    *
FROM staging.sql_glossary
WHERE example ILIKE 's_lect%';

SELECT split_part('hello duckdb', ' ', 2);