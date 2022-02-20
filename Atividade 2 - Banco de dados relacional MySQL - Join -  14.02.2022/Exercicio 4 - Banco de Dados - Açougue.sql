create database bd_cidade_das_carnes;
use bd_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
origem varchar (255) not null,
pecas_no_estoque int,
primary key (id));

insert into tb_categoria (origem, pecas_no_estoque) values ("Bovina",20); -- cat _id 1
insert into tb_categoria (origem, pecas_no_estoque) values ("Suína",30);
insert into tb_categoria (origem, pecas_no_estoque) values ("Ávez",15);
insert into tb_categoria (origem, pecas_no_estoque) values ("Imbutidos",50);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
peso decimal (8,2),
lote int,
preco decimal (8,2),
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_produto (nome, peso,lote, preco, cat_id) values ("Miolo de Acem", 4, 0001, 100, 1);
insert into tb_produto (nome, peso,lote, preco, cat_id) values ("Patinho",3,0002,54,1);
insert into tb_produto (nome, peso,lote, preco, cat_id) values ("Asa de Frango",5,0003,40,3);
insert into tb_produto (nome, peso,lote, preco, cat_id) values ("Carne Moida 1º",2,0004,25,1);

select * from tb_produto;
select nome, peso, preco from tb_produto;
select nome, peso, preco from tb_produto where preco >= 50;
select nome, peso, preco from tb_produto where preco between 3 and 60;
select nome, peso, preco from tb_produto where nome like "%c%";
select * from tb_produto where cat_id = 1;

select * from tb_categoria inner join tb_produto on tb_produto.id = tb_categoria.id;

