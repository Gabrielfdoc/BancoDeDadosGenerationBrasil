CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
classe varchar(255) not null,
spell varchar(255) not null,
id int auto_increment,
primary key (id)
);

INSERT INTO tb_classes (classe, spell)
VALUES
("Mago", "Chuva de fogo"),
("Guerreiro", "Enrigecer"),
("Arqueiro", "Flecha certeira"),
("Curandeiro", "Milagre de supernova"),
("Bardo", "Canção da destruição");

CREATE TABLE tb_personagens(
nome varchar(25) not null,
sexo varchar(1) not null,
nivel int not null,
local_origem varchar(35),
poder_de_ataque int not null,
poder_de_defesa int not null,
id int auto_increment,
classes_id int,
primary key(id),
foreign key (classes_id) references tb_classes(id)
);

INSERT INTO tb_personagens(nome, sexo, nivel, local_origem, poder_de_ataque, poder_de_defesa, classes_id)
VALUES
("Legolas", "M", 75, "Floresta das Trevas", 1545, 800, 3),
("Miranha", "M", 38, "Nova York", 688, 1100, 2),
("Tom Morello", "M", 90, "Nova York", 1875, 1875, 5),
("Asuna", "F", 93, "Alfheim", 532, 1999, 4),
("Kirito", "M", 99, "Alfheim", 2984, 2500, 2),
("Patolino, o Mago", "M", 9999, "Los Angeles", 9999999, 99999, 1),
("Ryu", "M", 329, "Japão", 56000, 51234, 2),
("Pablo", "M", 1025, "Candeias", 235489, 223478, 5);

SELECT * FROM tb_personagens WHERE poder_de_ataque >= 2000;

SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT * 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id
WHERE classe = "Guerreiro";