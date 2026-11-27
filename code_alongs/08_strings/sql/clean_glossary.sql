CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE
    IF NOT EXISTS refined.sql_glossary AS (
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
            staging.sql_glossary
    );