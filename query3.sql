SELECT "RegionName", to_char(avg(rent), 'FM9,999,990.00')
FROM rent
WHERE rent."RegionName" IN (
    SELECT zipcode FROM (
        SELECT COUNT(*), zipcode FROM tree
        GROUP BY zipcode
        ORDER BY COUNT(*) DESC
        LIMIT 10
    ) AS a
)
AND substring(rent.date FROM 1 FOR 7)='2023-08'
GROUP BY "RegionName"