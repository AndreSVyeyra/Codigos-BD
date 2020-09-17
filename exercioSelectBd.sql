USE cadastro;

SELECT  DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

UPDATE cursos SET nome = 'PáOO' WHERE idcurso = '9';

SELECT  COUNT(*) FROM cursos;

SELECT  COUNT(*)FROM cursos WHERE  carga > 40;

SELECT * FROM cursos WHERE ano = '2016';

SELECT AVG(totaulas)  FROM cursos WHERE ano = '2016';

/* Lista de gafanhotos*/

SELECT * FROM gafanhotos;

/*  Uma Lista com os dados de todos aqueles que nasceram entre 1/jan/2020 e 31/DEZ/2015*/

SELECT  * FROM gafanhotos 
WHERE nascimento > '2000-01-1' AND nascimento < '2015-12-31'
ORDER BY nascimento,nome;

/*  Uma Lista com os dados de todos os homens que trabalham como programadores*/

SELECT  * FROM gafanhotos 
WHERE profissao = 'programador'AND sexo ='M';

/*
Uma lista com os dados de todas as mulheres que nasceram no Brazil e que têm seu nome iniciado com a letra j
*/

SELECT * FROM gafanhotos
WHERE sexso = 'F' AND nacionalidade = 'Brasil' AND nome LIKE  'J%';

/*
Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesa menos de 100kg
*/

SELECT * FROM gafanhotos
WHERE sexso = 'M' AND nome LIKE '%silva%' AND nacionalidade != 'Brasil'AND peso < 100.00;


/*
Qual é a maior altura entre gafanhotos homens que moram no Brasil?
*/

SELECT MAX(altura) FROM gafanhotos
WHERE nacionalidade = 'Brasil' AND sexso = 'M';

/*
Qual é a média de peso dos gafanhotos cadastrados?
*/

SELECT AVG(peso) FROM gafanhotos;

/*
Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/jan/1990 e 31/dez/2000?
*/

SELECT nome,nacionalidade,nascimento,MIN(peso) FROM gafanhotos
WHERE sexso= 'F' AND  nacionalidade != 'Brasil' AND nascimento >= '1990-01-01' AND  nascimento <= '2000-12-31';

/*
Quantas gafanhotas mulheres tem mais de 1.90m de altura?
*/

SELECT sum(altura) FROM gafanhotos
WHERE sexso = 'F' AND altura >'1.90';





