-- CRIA O BANCO
CREATE DATABASE db_generation_game_online;
-- SELECIONA O BANCO
USE db_generation_game_online;
---------------------------------------------
-- 1. CRIA TABELA DE CLASSES
-- A classe representa o tipo do personagem:
-- exemplo: arqueiro, mago, guerreiro etc.
---------------------------------------------

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    arma_principal VARCHAR(255),
    tipo VARCHAR(255),
    PRIMARY KEY (id)
);

---------------------------------------------
-- 2. CRIA TABELA DE PERSONAGENS
-- Aqui criar 4 atributos relevantes além da PK:
-- ataque, defesa, nivel, velocidade etc.
-- Não esqueça da FOREIGN KEY (classe_id)
---------------------------------------------

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    velocidade INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

---------------------------------------------
-- 4. INSERIR 5 REGISTROS EM TB_CLASSES
---------------------------------------------

INSERT INTO tb_classes (nome, arma_principal, tipo)
VALUES 
("Guerreiro", "Espada Longa", "Força"),
("Arqueiro", "Arco Composto", "Agilidade"),
("Mago", "Cajado Arcano", "Magia"),
("Assassino", "Adaga", "Furtividade"),
("Curandeiro", "Bastão Sagrado", "Suporte");

---------------------------------------------
-- 5. INSERIR 8 PERSONAGENS RELACIONADOS
---------------------------------------------

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, velocidade, classe_id)
VALUES
("Thorin", 2500, 1800, 32, 40, 1),
("Lyria", 1200, 900, 25, 80, 2),
("Zafiro", 3000, 1500, 40, 60, 3),
("Shadow", 2800, 1100, 38, 95, 4),
("Elora", 900, 2000, 27, 50, 5),
("Draven", 3500, 2100, 50, 70, 1),
("Mira", 1800, 1300, 29, 85, 2),
("Kael", 2300, 1600, 31, 77, 3);

---------------------------------------------
-- 6. SELECT: ataque > 2000
---------------------------------------------

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

---------------------------------------------
-- 7. SELECT: defesa ENTRE 1000 e 2000
---------------------------------------------

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

---------------------------------------------
-- 8. SELECT: nomes com letra C (LIKE)
---------------------------------------------

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%";

---------------------------------------------
-- 9. INNER JOIN: personagens + classes
---------------------------------------------

SELECT p.nome, p.poder_ataque, p.nivel, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classe_id;

---------------------------------------------
-- 10. INNER JOIN filtrando classe específica
-- Exemplo: trazer só personagens Arqueiros
---------------------------------------------

SELECT p.nome, p.poder_ataque, p.nivel, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classe_id
WHERE c.nome = "Arqueiro";