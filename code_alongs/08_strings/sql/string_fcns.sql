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

-- concatenate
SELECT
    CONCAT(sql_word, ' command') AS concat,
    sql_word || ' command' AS "||",
    UPPER(TRIM(sql_word)) || ' command'
FROM
    staging.sql_glossary;