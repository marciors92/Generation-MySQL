create database db_peso_das_carnes;

use db_peso_das_carnes;

create table tb_categoria (
id bigint auto_increment,
nome varchar (100) not null,
tipo varchar (100) not null,
peso varchar (100) not null,
primary key (id)
);

insert into tb_categoria (nome, tipo, peso) values ("Filé", "Peixe", "1 semana");
insert into tb_categoria (nome, tipo, peso) values ("Alcatra", "Bovino", "1 mês");
insert into tb_categoria (nome, tipo, peso) values ("Bacon", "Suíno", "2 meses");
insert into tb_categoria (nome, tipo, peso) values ("Moela", "Frango", "2 semanas");
insert into tb_categoria (nome, tipo, peso) values ("Peito", "Frango", "2 semanas");

create table tb_produto (
id bigint auto_increment,
nome varchar (100) not null,
peso int not null,
preco decimal (5,2) not null,
armazem varchar (100) not null,
disponibilidade  boolean not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, peso, preco, armazem, disponibilidade, categoria_id)
values ("Venda 1", 20, 80, "armazem 3", true, 1),
       ("Venda 2", 19, 60, "armazem 1", true, 2),
       ("Venda 3", 30, 60, "armazem 3", true, 2),
       ("Venda 4", 25, 300, "armazem 1", false, 3),
       ("Venda 5", 18, 100, "armazem 3", true, 1),
       ("Venda 6", 21, 100, "armazem 2", false, 4),
       ("Venda 7", 22, 50, "armazem 3", true, 5),
       ("Venda 8", 27, 50, "armazem 1", true, 5);
       
       select * from tb_produto where preco > 50;
       
       select * from tb_produto where preco between 3 and 60;
       
       select * from tb_produto where nome like "%c%";
       
       select * from tb_produto inner join  tb_categoria on tb_produto.categoria_id = tb_categoria.id;
       
       select * from tb_produto where categoria_id in (2);