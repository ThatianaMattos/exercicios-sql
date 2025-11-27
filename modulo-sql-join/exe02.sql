CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Tabela de categorias de pizzas
CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

-- Tabela de pizzas
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(50),
    borda VARCHAR(100),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir 5 categorias
INSERT INTO tb_categorias(tipo, descricao)
VALUES
("Salgada", "Pizzas tradicionais"),
("Doce", "Pizzas doces"),
("Vegana", "Sem ingredientes de origem animal"),
("Premium", "Ingredientes selecionados"),
("Especial", "Receitas exclusivas");

-- Inserir 8 pizzas
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoria_id)
VALUES
("Mussarela", 45.00, "Média", "Tradicional", 1),
("Calabresa", 50.00, "Grande", "Catupiry", 1),
("Morango com Nutella", 80.00, "Grande", "Doce", 2),
("Prestígio", 60.00, "Média", "Chocolate", 2),
("Veggie Mix", 55.00, "Grande", "Sem borda", 3),
("Quatro Queijos", 70.00, "Grande", "Catupiry", 4),
("Camarão Premium", 120.00, "Grande", "Cheddar", 4),
("Frango Especial", 58.00, "Média", "Catupiry", 5);

-- CONSULTAS
SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT p.nome, p.valor, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

SELECT p.nome, p.valor, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.tipo = "Doce";
