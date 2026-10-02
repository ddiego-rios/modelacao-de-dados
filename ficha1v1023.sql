CREATE DATABASE IF NOT exists empresaxpto; 

USE empresaxpto; 

CREATE TABLE empregados (
id int unsigned NOT NULL AUTO_INCREMENT,
nome varchar(100) NOT NULL,
cargo varchar(200) NOT NULL,
ordenado decimal(7,2) NOT NULL,
telefone int DEFAULT NULL,
email varchar(320) DEFAULT NULL,
ativo tinyint NOT NULL DEFAULT 1,
data_insercao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO empregados (id, nome, cargo, ordenado, telefone, email, ativo) VALUES
(1, 'Bruno', 'Empregado', '1020.00', 916666666, 'bruno@empresaxpto.com', 1),
(2, 'Marco', 'Gestor', '1200.00', 964444444, 'marco@hotmail.com', 0),
(3, 'Tiago', 'CEO', '2400.00', 96, 'tiago@empresaxpto.com', 1),
(4, 'Maria', 'Consultora', '1099.99', NULL, NULL, 1),
(5, 'Joaquim', 'Vendedor', '950.00', NULL, 'joaquim@live.com', 1),
(6, 'Joana', 'Empregado', '1000.00', 256888888, 'joana@outlook.com', 1);

SELECT * FROM empregados;