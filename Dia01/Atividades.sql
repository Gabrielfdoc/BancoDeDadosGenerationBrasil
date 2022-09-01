-- INICIO ATIVIDADE 01
CREATE DATABASE db_rh_generation;

USE db_rh_generation;

CREATE TABLE tb_colaboradores(
nome varchar(100) not null,
salario int not null,
cargo varchar(30) not null,
id bigint auto_increment,
idade int,
email varchar(50),
primary key (id)
);

INSERT INTO tb_colaboradores(nome, salario, cargo, idade, email)
VALUES ("José Ricardo Guimarães", 3500, "Dev JR", 21, "jose22@gmail.com");

INSERT INTO tb_colaboradores(nome, salario, cargo, idade, email)
VALUES ("Ricardo Ferreira Martins", 7000, "Dev Pleno", 27, "ricardoodev@gmail.com");

INSERT INTO tb_colaboradores(nome, salario, cargo, idade, email)
VALUES ("Marcos Castro Oliveira", 1500, "Auxiliar de limpeza", 18, "marcosco@gmail.com");

INSERT INTO tb_colaboradores(nome, salario, cargo, idade, email)
VALUES ("Matheus da Silva", 5000, "Tech recruiter", 29, "matheustech@gmail.com");

INSERT INTO tb_colaboradores(nome, salario, cargo, idade, email)
VALUES ("Carlos Batista dos Santos", 2200, "Suporte de TI", 20, "carlos19@gmail.com");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 10000, cargo = "Dev Sr" WHERE id = 2;

-- INICIO ATIVIDADE 02

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
nome varchar(100) not null,
preco decimal(5, 2),
quantidade int,
data_validade date,
id bigint auto_increment,
primary key (id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("CD Xuxa", 20.5, 55, "2050-12-12");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Jogo Fifa 23", 300, 1000, "2080-10-12");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Boneco Fofão", 125, 10, "2999-12-12");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Shampoo", 12.99, 3000, "2024-09-01");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Condicionador", 14.99, 3000, "2024-09-01");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Curso JavaScript", 500, 80, "2025-09-01");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Caixa Lápis de cor", 120, 1500, "2030-10-12");

INSERT INTO tb_produtos(nome, preco, quantidade, data_validade)
VALUES ("Antivirus", 22, 10000, "2023-09-01");


SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 25, quantidade = 9735 WHERE id = 8;

-- INICIO ATIVIDADE 03

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
VALUES ("Jorge Felicio", 7.5, 1, 21, 2223);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Marcos Roberto", 8.5, 1, 20, 2543);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Matheus Silva", 6.5, 1, 24, 1437);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Thays Venancio", 5.5, 2, 23, 4095);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Paola Bracho", 10, 2, 30, 1111);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Lola Grindewald", 9.3, 2, 19, 9437);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Fernanda Torres", 7.2, 4, 23, 3612);

INSERT INTO tb_alunos(nome, nota, turma, idade, ra)
VALUES ("Joseph Climber", 9.9, 9, 23, 1015);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 8.5 WHERE id = 3;