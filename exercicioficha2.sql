USE all4books; 
-- 1 
SELECT * FROM cliente; 

-- 2
SELECT cod_cliente, nome, email from cliente order by nome asc; 

-- 3 
select * from cliente where email is null or email =" "; 

-- 4
select * from cliente where morada = "Porto" or morada = "Aveiro";

-- 5 
select count(*) from cliente; 

-- 6 
INSERT INTO cliente (nome, morada, sexo, email)  values ( "Joana", "Espinho", "F", "joana@outlook.com");

-- 7 
UPDATE cliente set email = "carolina@gmail.com", morada = "Espinho" where nome = "Carolina Silva";

-- 8 
DELETE FROM cliente where nome = "Rui Santos";

-- 9
SELECT titulo, preco, stock
from livro
where stock > 0
and titulo like "%Python%"; 

-- 10 
select titulo, preco from livro order by preco desc limit 2 ; 

 -- 11 
SELECT 
    CONCAT(e.editora, ' - ', l.titulo) AS Livro,
    CONCAT(l.preco, '€') AS Preço,
    l.stock
FROM livro l
JOIN editora e ON l.cod_editoraFK = e.cod_editora;