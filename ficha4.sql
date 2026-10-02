use agencia_viagens; 

-- 1
select * from clientes; 

-- 2 
select cod_cliente, nome, apelido from clientes order by nome asc; 

-- 3 
select count(*) from clientes; 

-- 4
select * from clientes where telemovel is null or telemovel = " " ; 

-- 5 
select * from clientes where email like "%@hotmail%" or email like "%@gmail%"; 

-- 6 
insert into clientes (nome, apelido, titulo) values ("João", "Campos", "Dr."); 

-- 7 
update clientes set
telemovel = 917777777, 
titulo = "Eng.º " 
where cod_cliente = 2 ; 

-- 8 
delete from clientes where cod_cliente = 4;

-- 9 
select * from viagens where preco between 500 and 10000; 

-- 10 
select * from viagens order by preco limit 1 ; 

-- 11 
select 
v.cod_viagem,
v.destino,
v.preco,
c.categoria	
from viagens v
inner join categorias c on v.cod_categoria = cod_categoria
where c.categoria = "Praias e ilhas" ;

-- 12 
SELECT 
    CONCAT(c.titulo, ' ', c.nome, ' ', c.apelido) AS Cliente,
    v.destino AS Destino,
    v.preco AS Preço
FROM compras co
INNER JOIN clientes c ON co.cod_cliente = c.cod_cliente
INNER JOIN viagens v ON co.cod_viagem = v.cod_viagem;