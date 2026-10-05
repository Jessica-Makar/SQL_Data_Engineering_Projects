SELECT 
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
FROM
    job_postings_fact
LIMIT 10;

SELECT
    company_id,
    name
FROM
    company_dim
LIMIT 10;

select count(distinct name)
from company_dim;

select *
from information_schema.tables
where table_catalog = 'data_jobs'; 

select table_name, column_name, data_type
from information_schema.columns
where table_catalog = 'data_jobs'; 

