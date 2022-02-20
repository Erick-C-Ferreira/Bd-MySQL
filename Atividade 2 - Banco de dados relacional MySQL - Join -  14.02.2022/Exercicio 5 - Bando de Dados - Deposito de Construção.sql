create database bd_construcao_e_acabamentos;
use bd_construcao_e_acabamentos;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(255),
primary key (id));

-- Popule esta tabela Categoria com até 5 dados
insert into tb_categoria (departamento) values ("Cerâmica");
insert into tb_categoria (departamento) values ("Loças");
insert into tb_categoria (departamento) values ("Sacarias");
insert into tb_categoria (departamento) values ("Construção");
insert into tb_categoria (departamento) values ("Acabamento");

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
valor decimal (8,2),
quantidade bigint,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

-- Popule esta tabela Produto com até 8 dados
insert into tb_produto (nome, valor, quantidade, cat_id) values("Piso antiderrapante Itagreis",55.99,100,1);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Porcelato Portobello",99.99,120,1);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Vaso ROCA",249.99,50,2);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Cimento Votorantim",24.99,400,3);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Rejunte Fortalezza",19.99,800,3);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Bloco Cerâmico 19x19x7,5",3.99,10000,4);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Lustre",949.99,20,5);
insert into tb_produto (nome, valor, quantidade, cat_id) values("Kit Gabinete", 349.99,10,5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais
select * from tb_produto where valor >= 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais
select * from tb_produto where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica)
select * from tb_produto where cat_id = 1;



