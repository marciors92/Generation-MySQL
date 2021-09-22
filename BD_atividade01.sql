create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
skill varchar(150),
hp_base  int,
arma varchar(255),
primary key(id)
);

insert into tb_classes(nome, skill, hp_base, arma) values ("Feiticeiro", "Feitiço", 1500, "Cajado");
insert into tb_classes(nome, skill, hp_base, arma) values ("Arqueiro", "Ranged", 50, "Arco e Flecha");
insert into tb_classes(nome, skill, hp_base, arma) values ("Bruxo", "Magia", 1200, "Varinha");
insert into tb_classes(nome, skill, hp_base, arma) values ("Cavaleiro", "Melee", 4000, "Espada e Escudo");
insert into tb_classes(nome, skill, hp_base, arma) values ("Curandeiro", "Ressurreição", 1400, "Grimorio");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255), 
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Legolas", 8001, 5000, 5000, 2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Você-Sabe-Quem", 12, 2000, 5000, 5);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Rei Artur", 8, 2000, 1000, 4);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Dumbledore", 10000, 12000, 3000, 1);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Galadriel", 15000, 10000, 5000, 3);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Gandalf", 4, 5000, 4500, 1);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("SUS", 50000, 1000, 6000, 5);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id
where tb_classes.id = 2;
