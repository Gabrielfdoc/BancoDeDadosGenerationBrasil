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