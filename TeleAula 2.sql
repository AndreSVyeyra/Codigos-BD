CREATE TABLE pais (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR (30),
continente VARCHAR(30),
codigo VARCHAR(30)
);

ALTER TABLE pais
DROP COLUMN continente;

DESC pais;

SELECT * FROM pais;

ALTER TABLE pais
ADD COLUMN continente ENUM ('Ásia','Europa','América','África','Oceania','Antártida') DEFAULT 'América' AFTER nome;

UPDATE pais 
SET continente = 'Ásia'
WHERE id = '4'
LIMIT 1;

USE gt;

INSERT INTO pais
 VALUES 
 ('1','Brasil','America','BRA'),
('2','India','Ásia','ION'),
('3','China','Ásia','IMI'),
('4','Japão','Ásia','JPN');


CREATE TABLE IF NOT EXISTS cidade(
id INT AUTO_INCREMENT  PRIMARY KEY NOT NULL,
nome VARCHAR(30),
populacao INT
);

INSERT INTO cidade (nome,populacao) 
VALUES ('Sorocaba','70000'),
('Déli','260000000'),
('Xangai','220000000'),
('Tóquio','38000000');

SELECT * FROM cidade;

INSERT INTO estado (nome,sigla) 
VALUES ('Maranhão','MA'),
('São Paulo','SP'),
('Santa Catarina','SC'),
('Rio de Janeiro','RJ');

DROP TABLE estado;

CREATE TABLE estado(
id INT AUTO_INCREMENT  PRIMARY KEY NOT NULL,
nome VARCHAR(30),
sigla VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS ponto_tu(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(30),
populacao INT NOT NULL DEFAULT 0,
tipo VARCHAR(30),
publicado VARCHAR(30) NOT NULL DEFAULT 'Não'
);

DROP TABLE ponto_tu;

INSERT INTO ponto_tu (nome,tipo) 
VALUES ('Quinzinhos de Barros','Instituição'),
('Parque Estadual de jalapão','Atrativo'),
('Torre Eifel','Atrativo'),
('Fogo de Chão','Serviço');

UPDATE  ponto_tu
SET tipo = 'Atrativo'
WHERE id = 1;

SELECT * FROM ponto_tu;

UPDATE pais 
SET codigo = 'IND'
WHERE id = 2;

SELECT * FROM pais;


DELETE FROM cidade
WHERE id = 1
LIMIT 1;

SELECT * FROM cidade;

