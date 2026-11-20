-- aggregation
SELECT 
  COUNT(*) AS number_rows,
  ROUND(AVG(salary_usd),-3) AS avg_salary_usd
FROM data_jobs;

-- aggregation and filtering
SELECT 
  COUNT(*) AS number_rows,
  ROUND(AVG(salary_usd),-3) AS avg_salary_usd
FROM data_jobs
WHERE 
  experience_level = 'EX';

SELECT
  *
FROM
  data_jobs
WHERE
  experience_level = 'EN' 
  AND company_location = 'Sweden'
  AND company_size = 'S';



FROM
  data_jobs
WHERE
  experience_level = 'EN' OR experience_level = 'SE';


-- IN operator
FROM
  data_jobs
WHERE
  experience_level IN ('EN','SE');



WHERE montly_salary_sek > 80_000 AND montly_salary_sek < 200_000;



SELECT 
  job_title,
  ROUND(salary_usd*10.2/12,-3) AS montly_salary_sek
FROM data_jobs
WHERE montly_salary_sek > 80_000 AND montly_salary_sek < 200_000;

SELECT 
  job_title,
  ROUND(salary_usd*10.2/12,-3) AS montly_salary_sek
FROM data_jobs
WHERE montly_salary_sek BETWEEN 80_000 AND 200_000;


SELECT
  job_title,
  experience_level,
  company_name,
  ROUND(salary_usd * 10.2 / 12, -3) AS montly_salary_sek
FROM
  data_jobs
WHERE
  montly_salary_sek BETWEEN 80_000 AND 200_000
ORDER BY
  job_title,
  montly_salary_sek DESC,
  company_name;

-- 100% remote job percentage
SELECT 
  COUNT(*) AS total_jobs,
  COUNT(*) FILTER (WHERE remote_ratio = 100) AS remote_jobs,
  ROUND(remote_jobs/total_jobs*100,1) AS percent_remote 
FROM data_jobs;

