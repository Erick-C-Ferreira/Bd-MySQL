-- Criar o Banco de dados db_quitanda
create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco) 
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco) 
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade, preco) 
values ("Cebola", 100, 1.50);

select * from tb_produtos;

select nome from tb_produtos;

select nome, preco from tb_produtos;

select * from tb_produtos where preco > 1.99;

select * from tb_produtos where preco > 5.99 or nome = "Banana";

update tb_produtos set preco = 1.99 where id = 1;

update tb_produtos set preco = 1.99 where nome = "Maçã";

delete from tb_produtos where id = 8;

insert into tb_produtos (nome, quantidade, preco) 
values ("Batata", 150, 5.50);

set SQL_SAFE_UPDATES = 0;

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2); -- 000000.00

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

delete from tb_produtos;
