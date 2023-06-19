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


