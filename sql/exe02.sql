CREATE DATABASE db_exe02;

USE db_exe02;

CREATE TABLE tb_ecommerce (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
categoria VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL (10,2)
);

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Camiseta Branca", "Camisetas", "Adidas", 253.50);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Calça Moletom Preta", "Calças", "Adidas", 305.60);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Camiseta Vermelha", "Camisetas", "Adidas", 253.50);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Air Max Vermelho", "Calçados", "Nike", 783.00);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Moletom Preto", "Agasalhos", "Nike", 367.50);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Air Force Branco", "Calçados", "Nike", 744.50);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Dunk Low Roxo", "Calçados", "Nike", 853.50);
INSERT INTO tb_ecommerce (nome, categoria, marca, preco) VALUES ("Camiseta Cinza", "Camisetas", "Adidas", 253.50);

SELECT (id, nome, categoria, marca, preco) FROM tb_ecommerce WHERE preco > 500;
SELECT (id, nome, categoria, marca, preco) FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ECOMMERCE SET preco = 844.33 WHERE id = 7;
