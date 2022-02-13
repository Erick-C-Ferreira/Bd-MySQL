create database bd_escola;
use bd_escola;

create table bd_escola (
id bigint auto_increment,
nome varchar (255),
cadastro bigint,
turma int,
ano int,
nota decimal (8,2),
primary key (id)
);

insert into bd_escola (nome, cadastro, turma, ano, nota) values ("Goku", (id+1000000),7, 1, 8);
insert into bd_escola (nome, cadastro, turma, ano, nota) values ("Vegeta", (id+1000000),6,2,9);
insert into bd_escola (nome, cadastro, turma, ano, nota) values ("Yancha", (id+1000000),7,1,5);
insert into bd_escola (nome, cadastro, turma, ano, nota) values ("Kaus", (id+1000000),7,1,6);
insert into bd_escola (nome, cadastro, turma, ano, nota) values ("Gohan", (id+1000000),9,1,9);

select * from bd_escola;
select * from bd_escola where nota >= 7;
select * from bd_escola where nota < 7;

update bd_escola set ano = 2 where id = 5;
 