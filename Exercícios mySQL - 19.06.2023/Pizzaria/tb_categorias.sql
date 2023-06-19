CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id bigint auto_increment,
    descricao varchar(255) not null,
    tamanho varchar(255) not null,
    primary key(id)
    );
    
INSERT INTO tb_categorias (descricao, tamanho) values ("Salgada", "Familia");
INSERT INTO tb_categorias (descricao, tamanho) values ("Doce", "Familia");
INSERT INTO tb_categorias (descricao, tamanho) values ("Vegana", "Familia");
INSERT INTO tb_categorias (descricao, tamanho) values ("Salgada", "Broto");
INSERT INTO tb_categorias (descricao, tamanho) values ("Doce", "Broto");
INSERT INTO tb_categorias (descricao, tamanho) values ("Vegana", "Broto");

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco >= 45.00;
SELECT * FROM tb_pizzas WHERE preco between 50.00 and 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT descricao, nome, quantidade, preco, avaliacao FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.categorias_id = tb_categorias.id WHERE descricao = "Doce";


