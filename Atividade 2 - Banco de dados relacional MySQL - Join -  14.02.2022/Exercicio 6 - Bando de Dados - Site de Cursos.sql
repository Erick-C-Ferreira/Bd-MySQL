create database bd_cursos;
use bd_cursos;

create table tb_categoria(
id bigint auto_increment,
area varchar(255) not null,
periodo varchar(255),
primary key (id));

insert into tb_categoria (area, periodo) values ("Banco de dados","Noturno");
insert into tb_categoria (area, periodo) values ("Dev Front End","Diurno-Matutino");
insert into tb_categoria (area, periodo) values ("Dev Back End","Diurno-Vespertino");

create table tb_produto(
id bigint auto_increment,
linguagem varchar (255) not null,
duracao varchar (255) not null,
valor decimal (8,2),
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_produto (linguagem, duracao, valor, cat_id) values ("HTML, CSS, JavaScript", "3 semanas", 99.99, 2);
insert into tb_produto (linguagem, duracao, valor, cat_id) values ("Java", "4 semanas", 199.99, 3);
insert into tb_produto (linguagem, duracao, valor, cat_id) values ("SQL", "2 semanas", 49.99, 1);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais
select * from tb_produto where valor > 50; 

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais
select * from tb_produto where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J
select * from tb_produto where linguagem like "%j%";

-- Faça um um select com Inner join entre tabela categoria e produto
select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java)
select * from tb_produto where cat_id = 2;