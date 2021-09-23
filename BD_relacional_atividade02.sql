create database db_loja;

use db_loja;

create table tb_produtos (
	id int auto_increment,
    nome varchar (100) not null,
    qtde int not null,
    preco decimal (8,2) not null,
    entrega_imediata boolean,
    primary key (id)
);

insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Livro", 80, 19.99, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Poltrona", 55, 399.90, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Micro-ondas", 25, 500.00, false);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Ventilador", 70, 150.00, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Celular", 100, 850.50, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Televisão", 30, 999.90, false);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Garrafa d'Água", 20, 15.00, true);
insert into tb_produtos (nome, qtde, preco, entrega_imediata) values ("Liqüidificador", 85.90, 9.99, true);

select nome from tb_produtos where preco > 500;

select nome from tb_produtos where preco < 500;

update tb_produtos set qtde = 45 where id = 1;

select * from tb_produtos;