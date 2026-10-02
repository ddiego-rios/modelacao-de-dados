use galeria; 

-- 1  Quais são os utilizadores registados na base de dados? (Quero visualizar toda a informação referente aos utilizadores) 
select * from utilizadores; 

-- 2 Quais são os utilizadores registados na base de dados, ordenados pelo campo nome e por ordem crescente? (Quero saber o nome, sexo e email)
select nome, sexo, email from utilizadores order by nome asc; 

-- 3 Quantos utilizadores do sexo masculino estão registados na base de dados? 
select count(*) from utilizadores where sexo = "M" ;

-- 4 Quais os utilizadores que possuem uma conta de endereço eletrónico do tipo Hotmail? 
select * from utilizadores  where email like "%@hotmail.com";

-- 5 Como inserir um novo utilizador, com os seguintes dados:
INSERT INTO utilizadores (cod_utilizador, nome, sexo, email) values (null, "Joana", "F", "joana@hotmail.com");

-- 6 Como eliminar o registo do utilizador "Rui" (cod_utilizador=4)? 
delete from utilizadores where cod_utilizador  = 4; 

-- 7 Quais as imagens guardadas em formato JPEG? 
select * 
from imagens
where imagem like "%.jpg" or imagem like "%.jpeg"; 

-- 8 Quais as imagens que não possuem descrição? 
select * from imagens where descricao is not null; 

-- 9. Quais as imagens que não foram inseridas pelo utilizador Pedro? 
SELECT i.*
FROM imagens i
JOIN utilizadores u ON i.cod_utilizador = u.cod_utilizador
WHERE u.nome <> 'Pedro';

-- 10 Como atualizar os dados da imagem "barcelona.jpg" (cod_imagem=2), com uma nova descrição ("Imagem da cidade de Barcelona.")?
UPDATE imagens
SET descricao = 'Imagem da cidade de Barcelona.'
WHERE cod_imagem = 2;

-- 11 Quais as imagens disponíveis na base de dados?
select i.imagem as imagens, 
c.categoria as caetegoria 
from imagens i
join categorias c on i.cod_categoria  = c.cod_categoria;

-- 12 
select * from categorias, imagens, utilizadores; 