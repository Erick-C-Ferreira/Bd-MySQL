create database tb_rh;
use tb_rh;

create table tb_rh(
id bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
idade int,
salario decimal (8.2),
primary key (id)
);
insert into tb_rh (nome, cargo, idade, salario)
value ("Goku", "Gerente", 43, 2000);
insert into tb_rh (nome, cargo, idade, salario)
value ("Vejeta", "Gerente", 48, 2000);
insert into tb_rh (nome, cargo, idade, salario)
value ("Gohan", "Cordenador", 23, 8000.00);
insert into tb_rh (nome, cargo, idade, salario)
value ("Kuririn", "Cordenador", 44, 1999.00);
insert into tb_rh (nome, cargo, idade, salario)
value ("Nº18", "Aprendiz", 16, 1999.00);

select * from tb_rh;
select * from tb_rh where salario >=2000;
select * from tb_rh where salario < 2000;

update tb_rh set salario = 2000 where id = 4;

