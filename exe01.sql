-- EXERCÍCIO 01 - Banco de Dados de RH

-- 1. Criar banco de dados
CREATE DATABASE db_rh;
USE db_rh;


-- 2. Criar tabela colaboradores com 5 atributos
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    salario DECIMAL(10,2),
    departamento VARCHAR(255),
    admissao DATE,
    PRIMARY KEY (id)
);

-- 3. Inserir no mínimo 5 registros
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, admissao)
VALUES ("Ana Paula", "Analista", 3500.00, "Financeiro", "2021-02-10"),
("Carlos Silva", "Assistente", 1800.00, "RH", "2020-09-15"),
("Mariana Lopes", "Gerente", 7200.00, "Comercial", "2019-04-20"),
("João Henrique", "Estagiário", 1200.00, "TI", "2023-01-10"),
("Fernanda Souza", "Desenvolvedora", 4500.00, "TI", "2022-08-05");

-- 4. SELECT salário > 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- 5. SELECT salário < 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- 6. Atualizar 1 registro
UPDATE tb_colaboradores SET salario = 5000.00 WHERE id = 5;

