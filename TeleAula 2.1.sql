CREATE TABLE IF NOT EXISTS linguagemPais(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
codigoPais INT(11),
linguagem VARCHAR(30) NOT NULL DEFAULT '',
oficial ENUM('Sim','Não') NOT NULL DEFAULT 'NÃO'
);