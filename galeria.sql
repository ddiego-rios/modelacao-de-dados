 create database galeria;

use galeria;

CREATE TABLE `categorias` (
  `cod_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `categorias` (`cod_categoria`, `categoria`) VALUES
(1, 'Natureza'),
(2, 'Arte'),
(3, 'Cidades'),
(4, 'Praias');

CREATE TABLE `utilizadores` (
  `cod_utilizador` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`cod_utilizador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `utilizadores` (`cod_utilizador`, `nome`, `sexo`, `email`) VALUES
(1, 'Pedro', 'M', 'pedro@hotmail.com'),
(2, 'Ana', 'F', 'ana@gmail.com'),
(3, 'Diana', 'F', 'diana@gmail.com'),
(4, 'Rui', 'M', 'rui@hotmail.com');



CREATE TABLE `imagens` (
  `cod_imagem` int NOT NULL AUTO_INCREMENT,
  `imagem` varchar(50) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cod_utilizador` int unsigned  NOT NULL,
  `cod_categoria` int unsigned NOT NULL,
  PRIMARY KEY (`cod_imagem`),
  KEY `fk_imagens_utilizadores_idx` (`cod_utilizador`),
  KEY `fk_imagens_categorias1_idx` (`cod_categoria`),
  CONSTRAINT `fk_imagens_categorias1` FOREIGN KEY (`cod_categoria`) REFERENCES `categorias` (`cod_categoria`),
  CONSTRAINT `fk_imagens_utilizadores` FOREIGN KEY (`cod_utilizador`) REFERENCES `utilizadores` (`cod_utilizador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `imagens` (`cod_imagem`, `imagem`, `descricao`, `cod_utilizador`, `cod_categoria`) VALUES
(1, 'porto_ribeira.jpg', 'Ribeira é um dos locais mais antigos....', 1, 3),
(2, 'barcelona.jpg', NULL, 1, 3),
(3, 'furadouro.bmp', 'A Praia do Furadouro...', 2, 4);