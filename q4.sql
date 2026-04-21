DELETE FROM course
WHERE person_idperson IN (
  SELECT idperson FROM person WHERE country = 'Egypt'
);
