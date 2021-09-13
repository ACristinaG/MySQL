create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabores varchar(255) not null,
borda varchar(255) not null,
brinde varchar(255) not null,
primary key (id)
);

insert into tb_categoria (sabores, borda, brinde) values ("Carne", "Cheddar", "Brotinho Doce Churros");
insert into tb_categoria (sabores, borda, brinde) values ("Frango", "Catupiry", "Brotinho Doce Romeu e Julieta");
insert into tb_categoria (sabores, borda, brinde) values ("Frutos do Mar", "Cream Cheese", "Brotinho Doce de Leite");
insert into tb_categoria (sabores, borda, brinde) values ("Vegana", "Queijo Vegano ", "Brotinho Doce Banana");
insert into tb_categoria (sabores, borda, brinde) values ("Queijos", "Cheddar", "Brotinho Doce Morango");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
tamanho varchar (255) not null,
preco decimal(5,2) not null,
massa varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("4 Formaggi", "P", 39.99, "Massa Integral", 5);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Carne Seca com Catupiry", "M", 59.99, "Massa Tradicional", 1);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Atum", "G", 89.99, "Massa s/Glutem", 3);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Calabresa", "G", 59.99, "Massa Integral", 1);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Caipira", "P", 49.99, "Massa Tradicional", 2);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Margherita", "G", 69.99, "Massa Integral", 5);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Verdi", "M", 69.99, "Massa Integral", 4);
insert into tb_pizza (nome, tamanho, preco, massa, categoria_id) values ("Vivere", "M", 69.99, "Massa s/Glutem", 4);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where nome like "C%";

select tb_pizza.nome, tb_pizza.tamanho, tb_pizza.preco, tb_pizza.massa, tb_categoria.sabores, tb_categoria.borda, tb_categoria.brinde   
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

select * from tb_pizza inner join
tb_categoria on tb_categoria.id = tb_pizza.categoria_id where sabores like "%Vegana%";