CREATE DATABASE db_exe01;
USE db_exe01;
CREATE TABLE tb_RH (
id BIGINT auto_increment PRIMARY KEY,
nome VARCHAR (255),
cargocod BIGINT,
nascimento DATE,
salário DECIMAL
);
 
 SELECT * FROM tb_rh;
 
 ALTER TABLE tb_rh MODIFY salário DECIMAL (10,2);
 
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Jéssica", 3, "2003-05-27", 1557.43);
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Abigail", 1, "1997-02-05", 10577.44);
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Lucas", 2, "2000-07-23", 4352.23);
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Vitória", 1, "1983-05-13", 11664.64);
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Gernilson", 4, "2005-03-10", 874.98);
INSERT INTO tb_rh (nome, cargocod, nascimento, salário) VALUES ("Larissa", 2, "2002-01-11", 4352.23);

SELECT id, nome, cargocod, salário FROM tb_rh WHERE salário > 2000;
SELECT id, nome, cargocod, salário FROM tb_rh WHERE salário < 2000;

UPDATE tb_rh SET salário = 11664.64 WHERE id=2;

CREATE TABLE tb_cargos (
cargoid BIGINT NOT NULL,
cargo VARCHAR(255),
FOREIGN KEY (cargoid) REFERENCES tb_rh(id)  
);

SELECT * FROM tb_cargos;

INSERT INTO tb_cargos (cargoid, cargo) VALUES (1, "Gerência");
INSERT INTO tb_cargos (cargoid, cargo) VALUES (2, "Supervisor");
INSERT INTO tb_cargos (cargoid, cargo) VALUES (3, "Atendimento");
INSERT INTO tb_cargos (cargoid, cargo) VALUES (4, "Estagiário");