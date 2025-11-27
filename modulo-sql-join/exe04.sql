
CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(6,2),
    peso VARCHAR(100),
    origem VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES
("Bovinos", "Carnes de boi"),
("Suínos", "Carnes de porco"),
("Aves", "Frangos e derivados"),
("Embutidos", "Linguiças e afins"),
("Exóticas", "Carnes especiais");

INSERT INTO tb_produtos(nome, preco, peso, origem, categoria_id)
VALUES
("Picanha", 120.00, "1kg", "Brasil", 1),
("Costela Bovina", 80.00, "1.5kg", "Brasil", 1),
("Lombo Suíno", 45.00, "1kg", "Brasil", 2),
("Frango Inteiro", 25.00, "2kg", "Brasil", 3),
("Linguiça Toscana", 28.00, "1kg", "Brasil", 4),
("Carne de Avestruz", 150.00, "1kg", "África do Sul", 5),
("Coxinha da Asa", 30.00, "1kg", "Brasil", 3),
("Filé Mignon", 140.00, "1kg", "Brasil", 1);

-- CONSULTAS
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Aves";
