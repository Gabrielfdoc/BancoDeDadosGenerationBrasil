CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
tipo varchar(40) not null,
tamanho varchar(40) not null,
id int auto_increment,
primary key(id)
);

INSERT INTO tb_categorias (tipo, tamanho)
VALUES
("Doce","Pequena"),
("Doce","Média"),
("Doce","Grande"),
("Salgada", "Pequena"),
("Salgada", "Média"),
("Salgada", "Grande");

CREATE TABLE tb_pizzas (
sabor varchar (50) not null,
preco decimal (5, 2) not null,
calorias int,
borda varchar(1),
id int auto_increment,
categorias_id int,
primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, calorias, borda, categorias_id)
VALUES
("Frango", 29.99, 399, "S", 6),
("Calabresa", 29.99, 565, "S", 6),
("Mozzarella", 23.99, 259, "S", 5),
("Portuguesa", 53.99, 1000, "S", 6),
("Frango com Catupiry", 30.99, 399, "S", 4),
("Brocólis", 47.99, 300, "N", 6),
("Prestigio", 29.99, 1500, "S", 3),
("Chocolate", 54.99, 956, "S", 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tipo = "Salgada";

UPDATE tb_pizzas SET categorias_id = 3 WHERE id = 8;

UPDATE tb_pizzas SET categorias_id = 2 WHERE id = 7;