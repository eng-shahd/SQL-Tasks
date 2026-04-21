
SELECT country, COUNT(*) AS personCount
FROM person
WHERE country IS NOT NULL AND country <> ''
GROUP BY country
HAVING personCount > 2
ORDER BY personCount DESC;
