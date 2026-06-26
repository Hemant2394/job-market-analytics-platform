-- SALARY BY EXPERIENCE LEVEL
select
    experience_level,
    round(avg(salary_in_usd)) as average_salary
from job_data
group by experience_level;

-- TOP 10 HIGHEST PAYING JOB TITLES
select
    job_title,
    max(salary_in_usd) as highest_salary
from job_data
group by job_title
order by highest_salary desc
LIMIT 10;

-- REMOTE VS ON-SITE SALARY
SELECT
    remote_ratio,
    round(avg(salary_in_usd)) as average_salary
from job_data
group by remote_ratio;

-- SALARY TREND BY YEAR
select
    work_year,
    round(avg(salary_in_usd)) as average_salary
from job_data
group by work_year
order by work_year;