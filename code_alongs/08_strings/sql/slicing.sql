SELECT
    'I stand on the shoulders of GIANTS - Newton' AS quote,
    42 AS cool_number;

-- subquery
SELECT
    quote,
    quote[:5],  
    SUBSTR(quote, 1, 5), -- in other SQL dialects
    quote[-1],
    quote[-6:]
FROM
    (
        SELECT
            'I stand on the shoulders of GIANTS - Newton' AS quote
    );