use empresaxpto;

#a 
select * from empregados;

#b
select nome from empregados;

#c 
select nome, telefone, email from empregados;

#d
select * from empregados where cargo = "Empregado";

#e
select * from empregados where ordenado >= 900;

#f
select * from empregados where ordenado between 1000 and 1500;

#g 
select ordenado from empregados where ativo = 1; 

#h
select * from empregados where email is not null and email <> "";

#i 
select * from empregados where telefone like "91%";

#j
select * from empregados where email like "%@empresaxpto.com";

#k
select * from empregados order by nome asc; 

#l
select * from empregados order by nome desc; 

#m 
select cargo, ordenado, nome from empregados order by cargo asc, ordenado desc;

#n
select count(*) as total_empregados from empregados;

#o
select count(*) as total_com_email from empregados where email is not null and email <> "";

#p
select sum(ordenado) as total_honorarios from empregados;

#q
select sum(ordenado) as total_honorarios from empregados where cargo <> "CEO"; 

#r
select round(avg(ordenado),2) as media_ordenados from empregados; 

#s
select distinct cargo from empregados order by cargo asc;

#t ( exemplo de sub query) 
SELECT nome, cargo, ordenado FROM empregados WHERE ordenado = (SELECT MIN(ordenado) FROM empregados);

#u
SELECT nome, ordenado FROM empregados WHERE ordenado = (SELECT MAX(ordenado) FROM empregados);

#v
SELECT nome, cargo, ordenado FROM empregados ORDER BY ordenado ASC LIMIT 3;

#w
SELECT 
    ordenado AS valor_ordenado,+
    (ordenado * 0.23) AS iva,
    (ordenado * 1.23) AS ordenado_com_iva,
    nome,
    cargo
FROM empregados;

#x 
SELECT 
    ordenado AS valor_ordenado,
    (ordenado * 0.23) AS iva,
    (ordenado * 1.23) AS ordenado_com_iva,
    nome,
    cargo
FROM empregados
ORDER BY ordenado DESC;

#y
SELECT cargo, SUM(ordenado) AS total_gastos FROM empregados GROUP BY cargo;

#z 
insert into empregados (nome, cargo, ordenado, ativo) values ("Sérgio", "Estágiario", "920", 1); 

#AA
UPDATE empregados SET ordenado = ordenado + 600 WHERE cargo = 'CEO';

#BB
UPDATE empregados SET ordenado = 1250, ativo = 1 WHERE nome = 'Marco';

#CC
UPDATE empregados SET ordenado = ordenado * 1.10;

#dd
UPDATE empregados SET ordenado = 1199.99 WHERE cargo = 'empregado';

#ee
DELETE FROM empregados WHERE nome = 'Joaquim';
