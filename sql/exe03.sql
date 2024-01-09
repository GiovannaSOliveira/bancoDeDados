CREATE DATABASE db_exe03;
USE db_exe03;

CREATE TABLE tb_escola (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
turma BIGINT,
nome VARCHAR(255) NOT NULL,
condicao VARCHAR(255) NOT NULL,
media_geral DECIMAL (2,1)
);

SELECT * FROM tb_escola;
ALTER TABLE tb_escola MODIFY media_geral DECIMAL(4,2);

INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (71, "Gabriela Almeida Chagas", "Bolsista", 9.7);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (72, "Maria Vitória dos Santos", "Pagante", 7.4);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (71, "Adelina Gomes Gonçalves", "Pagante", 10.0);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (71, "Janaina Mendes Santana", "Pagante", 8.7);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (72, "Leticia Queiroz de Andrade", "Bolsista", 5.4);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (71, "America Silveira Costa", "Bolsista", 9.3);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (72, "Luana Silva Santos", "Pagante", 6.4);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (72, "Camila Nunes Prado", "Bolsista", 7.5);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (71, "Giovanna Watanabe de Oliveira", "Pagante", 8.3);
INSERT INTO tb_escola (turma, nome, condicao, media_geral) VALUES (72, "Denise Vieira Cruz de Abastos", "Pagante", 9.8);

UPDATE tb_escola SET nome = "Giovanna Santos Watanabe" WHERE id_aluno = 13;