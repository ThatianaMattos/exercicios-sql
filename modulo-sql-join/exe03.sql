CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2),
    estoque INT,
    marca VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, tipo)
VALUES
("Cosméticos", "Beleza"),
("Medicamentos", "Saúde"),
("Higiene", "Uso diário"),
("Suplementos", "Nutrição"),
("Dermocosméticos", "Beleza");

INSERT INTO tb_produtos(nome, preco, estoque, marca, categoria_id)
VALUES
("Shampoo Anticaspa", 35.90, 100, "Clear", 3),
("Vitamina C", 120.00, 50, "Sundown", 4),
("Base Facial", 89.90, 30, "Vult", 1),
("Protetor Solar", 70.00, 40, "La Roche", 5),
("Dipirona", 12.00, 500, "Medley", 2),
("Ibuprofeno", 18.50, 300, "Neo Química", 2),
("Condicionador", 29.90, 80, "Pantene", 3),
("Colágeno", 55.00, 60, "Maxinutri", 4);

-- CONSULTAS
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Cosméticos";
