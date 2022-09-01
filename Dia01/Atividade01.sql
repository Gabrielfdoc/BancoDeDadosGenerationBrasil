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
VALUES 
("José Ricardo Guimarães", 3500, "Dev JR", 21, "jose22@gmail.com"),
("Ricardo Ferreira Martins", 7000, "Dev Pleno", 27, "ricardoodev@gmail.com"),
("Marcos Castro Oliveira", 1500, "Auxiliar de limpeza", 18, "marcosco@gmail.com"),
("Matheus da Silva", 5000, "Tech recruiter", 29, "matheustech@gmail.com"),
("Carlos Batista dos Santos", 2200, "Suporte de TI", 20, "carlos19@gmail.com");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 10000, cargo = "Dev Sr" WHERE id = 2;