use a123;

-- deletar produtos
delete from artigos where id > 6; 

-- selecionar os arigos com preço inferior a 50€
select * from artigos where preco < 50;

-- selecionar apenas o nome, marca e preco dos artigos 
select nome, marca, preco as preço from artigos;

-- selecionar todos os argiso da marca razer
select * from artigos where marca = "razer";

# pesquisar tudo sobre ratos!
select * from artigos
where nome like "%rato%";

-- pesquisar todos os artigos com oled
select * from artigos
where nome like "%oled%";

-- inserir maquinas de cafes
insert into artigos (nome, preco) values ("Maquina Cafes", 70);

# selecionar os artigos ordenados pela coluna nome
select * from artigos
order by nome asc;

-- altera a marca da maquina de cafe para "nespresso"
update artigos
set marca = "nespresso"
where id=6;

# aumentar 5€ o preço de todos os artigos
update artigos
set preco = preco + 5;

# quantos artigos temos?
select count(*) as "numero de artigos" from artigos;

# qual o artigo mais barato? 
select * from artigos 
order by preco;