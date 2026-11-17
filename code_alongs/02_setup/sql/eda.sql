

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