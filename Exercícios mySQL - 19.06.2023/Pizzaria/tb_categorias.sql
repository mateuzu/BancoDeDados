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

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(5,2) not null,
    avaliacao decimal(2,1) not null,
    categorias_id bigint,
    primary key (id),
    foreign key (categorias_id) REFERENCES tb_categorias(id)
    );
    
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Quatro queijos", 15, 45.00, 4.7, 1);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Romeu e Julieta", 8, 40.00, 4.5, 2);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Abobrinha", 5, 50.00, 4.0, 3);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Carne Seca", 17, 25.00, 5.0, 4);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Brigadeiro", 5, 28.00, 4.6, 5);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Brócolis", 4, 28.00, 4.2, 6);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Portuguesa", 10, 39.99, 4.4, 1);
INSERT INTO tb_pizzas(nome, quantidade, preco, avaliacao, categorias_id)
values ("Banofe", 12, 38.00, 4.3, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco >= 45.00;
SELECT * FROM tb_pizzas WHERE preco between 50.00 and 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT descricao, nome, quantidade, preco, avaliacao FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.categorias_id = tb_categorias.id WHERE descricao = "Doce";


