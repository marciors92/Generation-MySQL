create database db_rh;

use db_rh;

create table tb_funcionarios (
	id bigint auto_increment,
    nome varchar (100) not null,
    cargo varchar (50) not null,
    salario decimal (8,2) not null,
    ativo boolean,
    primary key (id)
);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Márcio", "Dev Java Jr.", 1350.00, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Estefânia", "Dev Full-Stack", 1499.99, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Luís", "Professor", 2000.00, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Miguel", "Back-end", 1199.99, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values ("Heloísa", "Dev Java Jr.", 1350.00, true);

select * from tb_funcionarios;

select nome from tb_funcionarios where salario > 2000.00;

select nome from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set cargo = "Dev Full-Stack" where id = 5;

select * from tb_funcionarios;