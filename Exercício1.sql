create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
raridade varchar(255) not null,
elixir double,
primary key (id)
);

insert into tb_classe (categoria, raridade, elixir) values ("Herói", "Rara", 4.5);
insert into tb_classe (categoria, raridade, elixir) values ("Bruxa", "Rara", 1.5);
insert into tb_classe (categoria, raridade, elixir) values ("Jogador", "Comum", 5.5);
insert into tb_classe (categoria, raridade, elixir) values ("Vikings", "Lendária", 4.5);
insert into tb_classe (categoria, raridade, elixir) values ("Guerreiro", "Rara", 2.5);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
vida int,
energia int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Homem de Ferro", 4000, 3000, 300, 1000, 1);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Ronaldinho", 9500, 2000, 100, 1000, 3);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Vinicius", 2000, 4000, 100, 1000, 5);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Júlia", 5000, 1500, 200, 1000, 2);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Ragnar", 8000, 7500, 300, 1000, 4);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Messi", 9000, 3000, 600, 1000, 3);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Aquiles", 8000, 5500, 180, 1000, 5);
insert into tb_personagem (nome, ataque, defesa, vida, energia, classe_id) values ("Thor", 10000, 4000, 300, 1000, 1);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.vida, tb_personagem.energia, tb_classe.categoria, tb_classe.raridade, tb_classe.elixir   
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id; 

select * from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.classe_id where tipo like "%Bruxa%";