CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
ataque BIGINT NOT NULL,
defesa BIGINT NOT NULL,
vida BIGINT NOT NULL,
idclass BIGINT,
FOREIGN KEY (idclass) REFERENCES tb_classes (idclasse)
);

CREATE TABLE tb_classes (
idclasse BIGINT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR(255),
perk VARCHAR(255)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

INSERT INTO tb_classes (classe, perk) VALUES ("Bruxo", "Maldição");
INSERT INTO tb_classes (classe, perk) VALUES ("Clérigo", "Cura");
INSERT INTO tb_classes (classe, perk) VALUES ("Druida", "Transformação");
INSERT INTO tb_classes (classe, perk) VALUES ("Vampiro", "Vampirismo");
INSERT INTO tb_classes (classe, perk) VALUES ("Ninja", "Stealth");

INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Valeria", 3600, 500, 1200, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Giovanna", 3000, 1200, 2000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Aline", 2700, 1000, 2500, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Kayky", 1800, 2000, 2500, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("João", 3600, 500, 1200, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Amanda", 3000, 1200, 2000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Gabriela", 1500, 2000, 1500, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, idclass) VALUES ("Lucas", 1500, 2000, 1500, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, vida) VALUES ("Ygor", 2000, 1300, 3000);


SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, vida FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.idclass = tb_classes.idclasse;
SELECT nome, ataque, defesa, vida FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.idclass = tb_classes.idclasse WHERE idclass = 2;


