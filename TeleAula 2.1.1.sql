SHOW TABLES;
-- Alterar a tabela de Elementos Turísticos, adicionando campos de latitude e longitude.

ALTER TABLE ponto_tu ADD coordenada POINT;
DESC cidade;

-- Alterar a tabela "Países", adicionando uma nota de 0 a 13 com o nível de interesse para o turista;

ALTER TABLE pais ADD interesse ENUM('0','1','2','3','4','5','6','7','8','9','10');

-- Alterar tabela "Cidades", incluindo uma lista com três melhores restaurantes.

ALTER TABLE cidade ADD melhoresRest VARCHAR(300) DEFAULT '';

INSERT INTO ponto_tu (coordenada) VALUES(POINT(1.324345,2.54565));

SELECT * FROM ponto_tu;

