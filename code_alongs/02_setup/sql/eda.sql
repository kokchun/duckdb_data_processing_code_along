

-- picks all columns and top 5 rows
SELECT * FROM video LIMIT 5;

--- count rows
SELECT 
  COUNT(*) 
FROM
  video;


--- select 3 cols
SELECT
  innehåll,
  videotitel,
  visningar
FROM 
  video;


-----

SELECT
  innehåll,
  videotitel,
  visningar
FROM 
  video
OFFSET 1; -- skips first row

-- select first row 
SELECT * FROM video WHERE innehåll = 'Totalt';

DELETE FROM video WHERE innehåll = 'Totalt';

-- get stats
SELECT
  MIN(längd),
  AVG(längd),
  MEDIAN(längd),
  MAX(längd)
FROM
  video;

-- with alias 
SELECT
  MIN(längd) AS shortest,
  AVG(längd) AS average,
  MEDIAN(längd) AS median,
  MAX(längd) AS longest
FROM
  video;