CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
nome varchar(100) not null,
nota decimal(4, 2),
turma int not null,
idade int,
ra int,
id bigint auto_increment,
primary key (id)
);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES 
("Jorge Felicio", 7.5, 1, 21, 2223),
("Marcos Roberto", 8.5, 1, 20, 2543),
("Matheus Silva", 6.5, 1, 24, 1437),
("Thays Venancio", 5.5, 2, 23, 4095),
("Paola Bracho", 10, 2, 30, 1111),
("Lola Grindewald", 9.3, 2, 19, 9437),
("Fernanda Torres", 7.2, 4, 23, 3612),
("Joseph Climber", 9.9, 9, 23, 1015);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 8.5 WHERE id = 3;