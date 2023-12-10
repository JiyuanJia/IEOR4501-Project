SELECT incident_zip, count(*) 
FROM public.complaints
WHERE 
    cast(created_date AS DATE) >= '2022-10-01' 
    AND cast(created_date AS DATE) <= '2023-11-30'
GROUP BY incident_zip