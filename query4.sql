with tmp as 
(
SELECT substring(date FROM 1 FOR 7) date, r.county, r."State", z."COUNTY", z."ZIPCODE", r.rent
FROM public.rent as r inner join public.zip_code as z
ON r."State"=z."STATE" 
AND r.county =z."COUNTY"
AND substring(date FROM 1 FOR 7)='2023-01'
)
             
SELECT a."ZIPCODE",to_char(a.avg, 'FM9,999,990.00') avg_rent,count(t.tree_id) tree_cnt,count(c.unique_key) com_cnt  from (
 	SELECT * FROM (
SELECT "ZIPCODE",avg(rent) FROM tmp 
GROUP BY "ZIPCODE"
ORDER BY avg(rent) desc
LIMIT 5)
    UNION
	SELECT * from (
	SELECT "ZIPCODE",avg(rent) FROM tmp 
GROUP BY "ZIPCODE"
ORDER BY avg(rent) asc
LIMIT 5)
 
) a
LEFT JOIN tree t ON a."ZIPCODE"::INTEGER=t.zipcode
    JOIN public.complaints c ON c.incident_zip=a."ZIPCODE"::INTEGER
    GROUP BY a."ZIPCODE",a.avg