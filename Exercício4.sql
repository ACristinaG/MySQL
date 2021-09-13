create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
setor varchar(255) not null,
procDoProduto varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, setor, procDoProduto) values ("Frutas", "Organico", "Alta Procura");
insert into tb_categoria (tipo, setor, procDoProduto) values ("Legumes", "Organico", "Média Procura");
insert into tb_categoria (tipo, setor, procDoProduto) values ("Verduras", "Não Organico", "Alta Procura");
insert into tb_categoria (tipo, setor, procDoProduto) values ("Bulbos", "Não Organico", "Pequena Procura");
insert into tb_categoria (tipo, setor, procDoProduto) values ("Raizes", "Organico", "Alta Procura");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
validade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, validade, categoria_id) values ("Banana", 8.99, '2021-08-20', 1);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Alho", 11.99, '2021-08-26', 4);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Cebola", 6.79, '2021-08-10', 4);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Berinjela", 9.99, '2021-08-14', 2);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Milho", 2.55, '2021-08-01', 2);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Melancia Densuke", 69.99, '2021-08-19', 1);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Batata", 8.99, '2021-08-20', 5);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Brócolis", 13.99, '2021-08-30', 3);
insert into tb_produto (nome, preco, validade, categoria_id) values ("Limão", 4.99, '2021-08-08', 1);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.tipo, tb_categoria.setor, tb_categoria.procDoProduto   
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; 

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.tipo, tb_categoria.setor, tb_categoria.procDoProduto   
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where procDoProduto like "%Pequena%";