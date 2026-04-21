UPDATE person p
SET p.Email = CONCAT(p.fName, p.lName, '@company.com')
WHERE p.idperson IN (
  SELECT DISTINCT person_idperson FROM project
);
