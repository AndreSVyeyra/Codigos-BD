UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = 1;

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = 4;


UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1;



UPDATE cursos
SET carga = '0'
Where ano = '2018'
LIMIT 1;

DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 2;

TRUNCATE cursos;