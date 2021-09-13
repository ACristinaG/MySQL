create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tarja varchar(255) not null,
setor varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, tarja, setor) values ("Antibioticos", "Vermelha", "Infantil/Adulto");
insert into tb_categoria (tipo, tarja , setor) values ("Dor e Cólica", "Amarela", "Infantil/Adulto");
insert into tb_categoria (tipo, tarja , setor) values ("Emagrecer", "Natural", "Adulto");
insert into tb_categoria (tipo, tarja , setor) values ("Antialérgicos", "Amarela", "Infantil/Adulto");
insert into tb_categoria (tipo, tarja , setor) values ("Psiquiátricos", "Preta", "Adulto");

select * from tb_categoria;

create table tb_remedio(
id bigint auto_increment,
nome varchar (255) not null,
uso varchar (255) not null,
preco decimal(5,2) not null,
categoria varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Fluoxetina", "oral", 79.99, "Original", 5);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Buscofem", "oral", 19.99, "Original", 2);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Paroxetina", "oral", 39.99, "Original", 5);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Ponstan", "oral", 9.99, "Genérico", 2);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Azitromicina", "oral", 69.99, "Genérico", 1);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Orlislat", "oral", 49.99, "Original", 3);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Allegra", "oral", 25.00, "Original", 4);
insert into tb_remedio (nome, uso, preco, categoria, categoria_id) values ("Polaramine", "oral", 33.50, "Original", 4);

select * from tb_remedio;

select * from tb_remedio where preco > 50.00;

select * from tb_remedio where preco between 3.00 and 60.00;

select * from tb_remedio where nome like "B%";

select tb_remedio.nome, tb_remedio.uso, tb_remedio.preco, tb_remedio.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
from tb_remedio inner join tb_categoria on tb_categoria.id = tb_remedio.categoria_id; 

select tb_remedio.nome, tb_remedio.uso, tb_remedio.preco, tb_remedio.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
from tb_remedio inner join
tb_categoria on tb_categoria.id = tb_remedio.categoria_id where tarja like "%Preta%";