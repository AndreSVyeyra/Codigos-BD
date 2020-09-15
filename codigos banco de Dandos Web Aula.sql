CREATE DATABASE IF NOT EXISTS veiculos DEFAULT  CHARACTER  SET utf8 DEFAULT COLLATE utf8_general_ci;

USE veiculos;

CREATE TABLE IF NOT EXISTS veiculos(
id INT(3)  AUTO_INCREMENT PRIMARY KEY ,
marca VARCHAR(30),
modelo VARCHAR(30),
valor DECIMAL (10,2)
);

DESC veiculos;

INSERT INTO veiculos (id,marca,modelo,valor) VALUES (1,"BMW","320i","160000.00"),
(2,"Mercedes_Benz","C180","140000.00"),
(3,"Hyunday","Azera","1200000.00"),
(4,"Mercedes_Benz","CLA 200","210000.00"),
(5,"BMW","328i","31000.00"),
(6,"VolKswagem","Passat","45000.00"),
(7,"BMW","316i","12000.00"),
(8,"Mercedes_Benz","Classe E","56000.00"),
(9,"Mercedes_Benz","C 250","980000.00"),
(10,"Jaguar","XF","987000.00"),
(11,"BMW","535i","897000.00"),
(12,"Jaguar","VZ","780000.00");

SELECT * FROM veiculos;

SELECT COUNT(*) FROM veiculos;

SELECT COUNT( DISTINCT MARCA) FROM Veiculos;

SELECT Marca, Modelo, MIN(Valor) as “MenorValor” FROM Veiculos;

SELECT Marca, Modelo, MAX(Valor) as “MaiorValor” FROM Veiculos;

SELECT AVG(Valor) as “ValorMédio” FROM Veiculos;

SELECT Marca, AVG(Valor) as “ValorMédio”
FROM Veiculos
GROUP BY Marca;

SELECT SUM(Valor) as “Total” FROM Veiculos;

