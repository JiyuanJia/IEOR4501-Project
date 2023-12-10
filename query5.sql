SELECT z."ZIPCODE",count(tree_id) cnt FROM tree t
JOIN public.zip_code z
ON t.zipcode= z."ZIPCODE"::INTEGER
GROUP BY z."ZIPCODE"
ORDER BY count(tree_id) DESC
LIMIT 10