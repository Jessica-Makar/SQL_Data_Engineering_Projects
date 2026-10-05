select 
    jpf.job_id,
    jpf.job_title_short,
    cd.company_id,
    cd.name AS company_name,
    jpf.job_location,

from
    job_postings_fact AS jpf
left join company_dim AS cd
    ON jpf.company_id = cd.company_id
LIMIT 10;

select *
from skills_job_dim
limit   10;

select *
from skills_dim
limit 10;

select
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
from
    job_postings_fact AS jpf
left join skills_job_dim AS sjd
    on jpf.job_id = sjd.job_id
left join skills_dim AS sd
    on sjd.skill_id = sd.skill_id;