-- EXERCÍCIO 02 - Banco de Dados de E-commerce

-- 1. Criar banco de dados
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2. Criar tabela produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
    preco DECIMAL(10,2),
    estoque INT,
    fornecedor VARCHAR(255),
    PRIMARY KEY (id)
);

-- 3. Inserir no mínimo 8 produtos
INSERT INTO tb_produtos (nome, categoria, preco, estoque, fornecedor)
VALUES ("Notebook Gamer", "Eletrônicos", 6500.00, 15, "Dell"),
("Mouse Sem Fio", "Periféricos", 120.00, 80, "Logitech"),
("Geladeira Frost Free", "Eletrodomésticos", 2300.00, 10, "Brastemp"),
("Smartphone X200", "Eletrônicos", 3200.00, 20, "Samsung"),
("Cafeteira Elétrica", "Eletrodomésticos", 260.00, 30, "Philips"),
("Monitor 27 Polegadas", "Periféricos", 900.00, 12, "AOC"),
("Caixa de Som Bluetooth", "Áudio", 150.00, 50, "JBL"),
("Cadeira Gamer", "Móveis", 780.00, 5, "DT3");

-- 4. SELECT preco > 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- 5. SELECT preco < 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- 6. Atualizar 1 registro
UPDATE tb_produtos SET estoque = 25 WHERE id = 4;

