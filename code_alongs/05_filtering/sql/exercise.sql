/* Uppgift
1. plocka ut jobbtitel, lönen, experience lvl och sortera högsta lön

2. räkna ut lönen i kr och omvandla till månadslön

3. plocka ut enbart juniora

4. utforska fler saker 
*/

-- 1 
SELECT
  job_title,
  salary_usd,
  experience_level
FROM
  data_jobs
ORDER BY salary_usd DESC;

-- 2

SELECT
  job_title,
  ROUND(salary_usd*10.2/12,-3) AS salary_sek,
  experience_level
FROM
  data_jobs
ORDER BY salary_usd DESC;

-- 3 
SELECT DISTINCT experience_level
FROM data_jobs;

--
SELECT DISTINCT
  job_title
FROM
  data_jobs
WHERE
  regexp_matches(job_title, 'AI.*Engineer');

-- filter out 
FROM data_jobs
WHERE 
  experience_level = 'EN' AND
  company_location = 'Sweden' AND
  remote_ratio = 100 AND 
  employee_residence = 'United Kingdom'


-- 
SELECT 
  experience_level,
  ROUND(AVG(salary_usd*10.2/12), -3) AS avg_salary_sek,
  ROUND(MEDIAN(salary_usd*10.2/12), -3) AS median_salary_sek
FROM data_jobs
GROUP BY
  experience_level;