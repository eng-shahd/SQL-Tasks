SELECT p.country, AVG(langCount) AS avgLanguages
FROM (
  SELECT p.idperson, p.country, COUNT(l.idlanguage) AS langCount
  FROM person p
  LEFT JOIN language l ON l.person_idperson = p.idperson
  GROUP BY p.idperson, p.country
) AS sub
GROUP BY country
HAVING avgLanguages > 1
ORDER BY avgLanguages DESC;
