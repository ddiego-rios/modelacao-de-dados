USE loja; 

insert into produto(idproduto, produto, preco, stock) values (null,"Samsung S26", 600, 3); 
insert into produto(produto, preco, stock) values ("Iphone 18 Pro", 1500, 4); 
insert into produto(produto, preco, stock) values ("Google Pixel 11 Pro XL", 1000, 5); 

insert into utilizador (nome, morada, email, password) values ("Joaquim Silva", "Lisboa", "joaquimsilva@gmail.com", 123);

insert into encomenda (idutilizadorFK) 
values(1) ;
select @@identity; 

