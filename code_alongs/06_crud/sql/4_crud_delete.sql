-- DELETE 
-- throw away rows 5-9
-- select first before delete
SELECT
  *
FROM
  programming.cpp
WHERE
  id BETWEEN 5 AND 9
  OR id BETWEEN 13 AND 16;



DELETE
FROM
  programming.cpp
WHERE
  id BETWEEN 5 AND 9
  OR id BETWEEN 13 AND 16;