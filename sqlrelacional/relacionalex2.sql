CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
idpi BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cobertura VARCHAR(255),
legume_fruta VARCHAR(255),
proteina VARCHAR(255),
idcat BIGINT,
FOREIGN KEY (idcat) references tb_categorias(idcat),
preco DECIMAL(10,2) NOT NULL
);


CREATE TABLE tb_categorias (
idcat BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
borda VARCHAR(255)
);

INSERT INTO tb_categorias (sabor, borda) VALUES ("salgada", "catupiry");
INSERT INTO tb_categorias (sabor, borda) VALUES ("salgada", "cheddar");
INSERT INTO tb_categorias (sabor) VALUES ("salgada");
INSERT INTO tb_categorias (sabor, borda) VALUES ("doce", "chocolate");
INSERT INTO tb_categorias (sabor) VALUES ("doce");

INSERT INTO tb_pizzas (nome, cobertura, proteina, legume_fruta, idcat, preco) VALUES ("escarola","mussarela","bacon","escarola", 2, 40.00);
INSERT INTO tb_pizzas (nome, cobertura, proteina, idcat, preco) VALUES ("portuguesa","mussarela","presunto e ovos", 1, 50.00);
INSERT INTO tb_pizzas (nome, cobertura, idcat, preco) VALUES ("cinco queijos","mussarela, provolone, parmesão, gorgonzola, catupiry", 1, 57.50);
INSERT INTO tb_pizzas (nome, cobertura, legume_fruta, idcat, preco) VALUES ("sensação","chocolate","morango", 4, 37.00);
INSERT INTO tb_pizzas (nome, cobertura, legume_fruta, idcat, preco) VALUES ("banoffe","caramelo","banana", 5, 35.00);
INSERT INTO tb_pizzas (nome, cobertura, proteina, legume_fruta, idcat, preco) VALUES ("portuguesa especial","mussarela e catupiry","peito de peru","tomate", 1, 56.50);
INSERT INTO tb_pizzas (nome, cobertura, legume_fruta, idcat, preco) VALUES ("veganinha","mussarela vegana", "milho, escarola, tomate", 3, 52.50);
INSERT INTO tb_pizzas (nome, cobertura, proteina, legume_fruta, idcat, preco) VALUES ("batata frita","mussarela e batata frita","presunto","milho", 2, 51.00);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, tb_categorias.sabor, tb_categorias.borda, cobertura, proteina, legume_fruta, preco FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.idcat = tb_categorias.idcat;

SELECT nome, tb_categorias.sabor, tb_categorias.borda, cobertura, proteina, legume_fruta, preco FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.idcat = tb_categorias.idcat WHERE tb_categorias.idcat = 1;