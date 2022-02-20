create database bd_game_on;
use bd_game_on;

create table tb_classe(
id bigint auto_increment,
classe varchar (255) not null,
arma varchar(255),
primary key (id));

insert into tb_classe (classe, arma) values ("Arqueiro","Arco e Flecha");
insert into tb_classe (classe, arma) values ("Mago","Bastão");
insert into tb_classe (classe, arma) values ("Guerreiro","Espada");
insert into tb_classe (classe, arma) values ("Cavaleiro Dragão","Flauta Domadora");
insert into tb_classe (classe, arma) values ("Vingador", "Chama da Vingança");

create table tb_personagens(
id bigint auto_increment,
nickname varchar (255),
ataqueF int not null,
ataqueM int not null,
defesa int not null,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe (id));

insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Seiya", 3000, 1500, 2000,1);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Kouga",2800, 1200, 1500,3);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Erza",2000,3000,2000,3);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Kratos",2000,1000,1800,4);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Thore",1000,3000,1400,5);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Frigga",500,3000,1800,2);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Zero",2200,1200,1400,4);
insert into tb_personagens (nickname, ataqueF, ataqueM, defesa, classe_id) values ("Jin",1800,1200,1800,5);

select * from tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000
select * from tb_personagens where ataqueF or ataqueM >= 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000
select * from tb_personagens where defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C
select * from tb_personagens where nickname like "%C%";

-- Faça um select com Inner join entre tabela classe e personagem
select * from tb_personagens inner join tb_classe on classe_id = tb_personagens.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica
select * from tb_personagens right join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.id = 3;