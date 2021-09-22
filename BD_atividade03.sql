create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
nome varchar (100) not null,
tipo varchar (100) not null,
qtde varchar (100) not null,
primary key (id)
);

insert into tb_categoria (nome, tipo, qtde) values ("Remédio A", "Enxaqueca", "5 dias");
insert into tb_categoria (nome, tipo, qtde) values ("Remédio B", "Estômago", "3 dias");
insert into tb_categoria (nome, tipo, qtde) values ("Remédio C", "Sinusite", "7 dias");
insert into tb_categoria (nome, tipo, qtde) values ("Remédio D", "Muscular", "3 dias");
insert into tb_categoria (nome, tipo, qtde) values ("Remédio E", "Abdômen", "2 dias");

create table tb_produto (
id bigint auto_increment,
nome varchar (100) not null,
qtde_comprada int not null,
preco decimal (5,2) not null,
farmacia varchar (100) not null,
disponibilidade  boolean not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, qtde_comprada, preco, farmacia, disponibilidade, categoria_id)
values ("Venda 1", 8, 80, "farmacia 3", true, 1),
       ("Venda 2", 5, 60, "farmacia 1", true, 2),
       ("Venda 3", 2, 60, "farmacia 3", true, 2),
       ("Venda 4", 7, 35, "farmacia 1", false, 3),
       ("Venda 5", 10, 85, "farmacia 3", true, 1),
       ("Venda 6", 3, 40, "farmacia 2", false, 4),
       ("Venda 7", 9, 60, "farmacia 3", true, 5),
       ("Venda 8", 6, 50, "farmacia 1", true, 5);
       
       select * from tb_produto where preco > 50;
       
       select * from tb_produto where preco between 3 and 60;
       
       select * from tb_produto where nome like "%b%";
       
       select * from tb_produto inner join  tb_categoria on tb_produto.categoria_id = tb_categoria.id;
       
       select * from tb_produto where categoria_id in (2);