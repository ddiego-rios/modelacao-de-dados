-- comentário! boa tarde!
-- create database a123;
use a123;

-- tabela arigos com as colunas id, nome, preco, marca, categoria
create table if not exists artigos
(
id int primary key,
nome varchar(50) not null, 
preco decimal(7,2) not null, 
marca varchar(50),
categoria varchar(50)
);

-- inserir alguns produtos
insert into artigos (id, nome, preco, marca, categoria) values 
(1, "Tapete rato XPTO", 25, "Razer", "Informática"), 
(2, "monitor oled 25",150,"Asus", "Informática"),
(3, "Rato", 49.99,"Razer","Informática"),
(4, "Teclado", 50, "Steelseries", "Informatica"),
(5, "TV 8K QLED 100 FINA CURVADA SEM FIO", 600, "Samsung", "TV");

-- consultar os artigos
select * from artigos;