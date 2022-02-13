create database bd_ecommerce;
use db_ecommerce;

create table bd_ecommerce(
id bigint auto_increment,
nome  varchar (255) not null,
tipo varchar (255) not null,
console varchar (255) not null,
quantidade int,
preco decimal (8,2),
primary key (id));

insert into bd_ecommerce (nome, tipo, console, quantidade, preco)
values ("God of War", "Ação/Aventura", "Para PS2 a PS5", 500, 20);
insert into bd_ecommerce (nome, tipo, console, quantidade, preco)
values ("God of War 2", "Ação/Aventura", "Para PS2 a PS5", 200, 20);
insert into bd_ecommerce (nome, tipo, console, quantidade, preco)
values ("God of War 3", "Ação/Aventura", "Para PS2 a PS5", 300, 20);
insert into bd_ecommerce (nome, tipo, console, quantidade, preco)
values ("God of War 4", "Ação/Aventura", "Para PS2 a PS5", 500, 600);
insert into bd_ecommerce (nome, tipo, console, quantidade, preco)
values ("Need for Speed: Most Wanted", "Corrida", "PS2 a PS5", 50, 700);

select * from bd_ecommerce;
select * from bd_ecommerce where preco >= 500;
select * from bd_ecommerce where preco < 500;

update bd_ecommerce set preco = 30 where id = 5;


