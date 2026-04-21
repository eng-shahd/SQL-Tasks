
SELECT p.fName, p.lName, COUNT(c.idcourse) AS courseCount
FROM person p
INNER JOIN course c ON c.person_idperson = p.idperson
GROUP BY p.idperson
HAVING courseCount > 2
ORDER BY courseCount DESC;
