create database bd_pizzaria_legal;
use bd_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho enum ('Broto', 'Média', 'Grande'),
massa varchar (255),
borda_recheada enum ('Sim', 'Não'),
primary key (id)
);

insert into tb_categoria (tamanho, massa, borda_recheada) values ('Broto', "Massa_Folhada", 'Sim');
insert into tb_categoria (tamanho, massa, borda_recheada) values ('Média', "Massa_Fina", 'Não');
insert into tb_categoria (tamanho, massa, borda_recheada) values ('Grande', "Massa_Integral", 'Sim');
insert into tb_categoria (tamanho, massa, borda_recheada) values ('Broto', "Sem_Gluten", 'Não');

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar (255),
ingrediente varchar (255),
azeitona enum ('Sim', 'Não'),
cebola enum ('Sim', 'Não'),
preco decimal (8,2),
tb_cat bigint,
primary key (id),
foreign key (tb_cat) references tb_categoria (id)
);

insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("Calabresa", "Molho de tomate, calabresa, oregano", 'Sim', 'Sim', 30, 3);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("Muzzarela", "Molho de tomate, Queijo Muzzarela, Tomate, oregano", 'Sim', 'Não', 30, 1);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("Toscana", "Molho de tomate, calabresa, Muzzarela, Tomate oregano", 'Sim', 'Sim', 30, 2);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("Portuguesa", "Molho de tomate, calabresa, Muzzarela, Tomate, Ovo, Ervilha oregano", 'Sim', 'Não', 30, 4);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("DobroCalabresa", "Molho de tomate, calabresa, oregano", 'Sim', 'Sim', 50, 3);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("DobroMuzzarela", "Molho de tomate, Queijo Muzzarela, Tomate, oregano", 'Sim', 'Não', 48, 1);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("DobroToscana", "Molho de tomate, calabresa, Muzzarela, Tomate oregano", 'Sim', 'Sim', 46, 2);
insert into tb_pizza (nome, ingrediente, azeitona, cebola, preco, tb_cat) values ("DobroPortuguesa", "Molho de tomate, calabresa, Muzzarela, Tomate, Ovo, Ervilha oregano", 'Sim', 'Não', 25, 4);

select * from tb_pizza;
select * from tb_pizza where preco >= 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like ("%c%");
select * from tb_pizza inner join tb_categoria on tb_pizza.tb_cat = tb_categoria.id;
select * from tb_pizza inner join tb_categoria on tb_pizza.tb_cat = tb_categoria.id where tb_pizza.cebola ='Não';	


