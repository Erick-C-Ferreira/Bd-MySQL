create database bd_farmacia;
use bd_farmacia;

create table tb_categoria(
id bigint auto_increment,
cat varchar (255) not null,
primary key (id));

-- Popule esta tabela Categoria com até 5 dados
insert into tb_categoria (cat) values ("Remédios Gerais");
insert into tb_categoria (cat) values ("Rémedios Tarja Preta");
insert into tb_categoria (cat) values ("Rémedios Com Receita");
insert into tb_categoria (cat) values ("Higiene");
insert into tb_categoria (cat) values ("Diversos");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal (8,2),
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria (id));

-- Popule esta tabela Produto com até 8 dados
insert into tb_produto (nome, valor, cat_id) values ("Dorflex", 5.99, 1);
insert into tb_produto (nome, valor, cat_id) values ("Shampoo", 49.99, 4);
insert into tb_produto (nome, valor, cat_id) values ("Protetor Solar", 79.99, 4);
insert into tb_produto (nome, valor, cat_id) values ("Chocolate", 4.99, 5);
insert into tb_produto (nome, valor, cat_id) values ("Amoxicilina", 29.99, 3);
insert into tb_produto (nome, valor, cat_id) values ("Lorazartana", 14.99, 2);
insert into tb_produto (nome, valor, cat_id) values ("Dipirona", 4.99, 1);
insert into tb_produto (nome, valor, cat_id) values ("Barra de Cereal",4.99, 5);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais
select * from tb_produto where valor >= 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais
select * from tb_produto where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B
select * from tb_produto where nome like "%b%";

-- Faça um um select com Inner join entre tabela categoria e produto
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.cat_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos)
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.cat_id where tb_categoria.id = 4;





