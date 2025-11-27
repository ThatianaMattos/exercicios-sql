-- EXERCÍCIO 03 - Banco de Dados Escolar

-- 1. Criar banco de dados
CREATE DATABASE db_escola;
USE db_escola;

-- 2. Criar tabela estudantes
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    turma VARCHAR(10),
    nota DECIMAL(4,2),
    faltas INT,
    PRIMARY KEY (id)
);

-- 3. Inserir no mínimo 8 estudantes
INSERT INTO tb_estudantes (nome, idade, turma, nota, faltas)
VALUES ("Aline Souza", 14, "8A", 9.5, 2),
("Bruno Silva", 15, "9B", 6.8, 5),
("Camila Martins", 13, "7A", 7.2, 1),
("Diego Costa", 14, "8A", 8.0, 0),
("Eduardo Ramos", 15, "9A", 5.5, 3),
("Fernanda Dias", 13, "7B", 9.0, 0),
("Gabriel Lima", 14, "8B", 6.0, 7),
("Helena Alves", 15, "9C", 7.8, 4);

-- 4. SELECT nota > 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5. SELECT nota < 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6. Atualizar 1 registro
UPDATE tb_estudantes SET faltas = 1 WHERE id = 2;
