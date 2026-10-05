/* 
Find the top 10 compaies for posting jobs.
They must have > 3000 postings.
Limit this to only US jobs.
*/

EXPLAIN ANALYZE
select 
    cd.name AS company_name,
    count(jpf.job_id) AS posting_count,
    -- jpf.job_country
from 
    job_postings_fact AS jpf
left join company_dim AS cd
    on jpf.company_id = cd.company_id
where 
    jpf.job_country = 'United States'
group by cd.name 
having posting_count > 3000
order by 
    posting_count desc
-- limit 10
;