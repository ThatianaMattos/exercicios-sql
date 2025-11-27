CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    area VARCHAR(255)
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(8,2),
    carga_horaria INT,
    instrutor VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, area)
VALUES
("Programação", "Tecnologia"),
("Design", "Criatividade"),
("Marketing", "Comunicação"),
("Data Science", "Análise"),
("DevOps", "Engenharia");

INSERT INTO tb_cursos(nome, valor, carga_horaria, instrutor, categoria_id)
VALUES
("Java Completo", 800.00, 80, "Carlos Souza", 1),
("Python para Iniciantes", 600.00, 60, "Ana Silva", 1),
("UI/UX Avançado", 1200.00, 50, "Paula Mendes", 2),
("Marketing Digital", 700.00, 40, "Lucas Alves", 3),
("Power BI Completo", 900.00, 45, "Bruno Lima", 4),
("Docker e Kubernetes", 1500.00, 70, "Marcos Dias", 5),
("JavaScript do Zero", 550.00, 40, "Gabriel Reis", 1),
("Branding Avançado", 650.00, 30, "Julia Rocha", 3);

-- CONSULTAS
SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT c.nome AS curso, c.valor, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON cat.id = c.categoria_id;

SELECT c.nome AS curso, c.valor, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON cat.id = c.categoria_id
WHERE cat.nome = "Java";
