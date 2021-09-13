create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
setor varchar(255) not null,
estoque varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, setor, estoque) values ("Construção", "Area Externa/Interna", "Disponivel");
insert into tb_categoria (tipo, setor, estoque) values ("Pintura", "Area Externa/Interna", "Disponivel");
insert into tb_categoria (tipo, setor, estoque) values ("Decoração", "Area Externa/Interna", "Disponivel");
insert into tb_categoria (tipo, setor, estoque) values ("Eletros", "Area Externa/Interna", "Disponivel");
insert into tb_categoria (tipo, setor, estoque) values ("Elétrica", "Area Externa/Interna", "Disponivel");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
garantia_meses int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Biombo Ripado de Madeira Pinus Natural 151x180cm Massol", 449.99, 6, 3);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Espelho Veneziano Estilo Provençal 88cm - Moldura Em Vidro Trabalhado", 1199.90, 3, 3);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Rolo Textura Cabelo De Anjo 23cm S/cabo", 25.99, 3, 2);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Rolo Angular para Paredes Lisas Dexter", 19.99, 0, 2);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Lava E Seca Samsung Air Wash 11kg", 3835.10, 3, 4);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Smart Tv Philco Led 50 Polegadas 4k Uhd 2 Usb 4 Hdmi Wi Fi", 2999.99, 12, 4);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Tinta Látex Fosco a Clássica Maxx Branco Neve 20L Suvinil + Kit Pintura 5 Peças Dexter", 435.49, 12, 2);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Argamassas", 34.99, 12, 1);
insert into tb_produto (nome, preco, garantia_meses, categoria_id) values ("Caixa d'Água", 2479.99, 120, 1);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.garantia_meses, tb_categoria.tipo, tb_categoria.setor, tb_categoria.estoque   
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; 

select tb_produto.nome, tb_produto.preco, tb_produto.garantia_meses, tb_categoria.tipo, tb_categoria.setor, tb_categoria.estoque   
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where nome like "%x%";