CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(6,2),
    marca VARCHAR(255),
    estoque INT,
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES
("Hidráulica", "Itens para encanamento"),
("Elétrica", "Materiais elétricos"),
("Ferramentas", "Uso geral"),
("Tintas", "Acabamento"),
("Construção", "Materiais brutos");

INSERT INTO tb_produtos(nome, preco, marca, estoque, categoria_id)
VALUES
("Cimento 50kg", 35.00, "Votoran", 200, 5),
("Tinta branca 18L", 110.00, "Coral", 50, 4),
("Chave de Fenda", 20.00, "Tramontina", 300, 3),
("Cano PVC 3m", 25.00, "Tigre", 500, 1),
("Fio 6mm", 90.00, "Corfio", 200, 2),
("Parafusadeira", 350.00, "Bosch", 20, 3),
("Tinta preta 18L", 120.00, "Suvinil", 40, 4),
("Viga metálica", 180.00, "MetalMax", 10, 5);

-- CONSULTAS
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

SELECT p.nome, p.preco, c.nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Hidráulica";
