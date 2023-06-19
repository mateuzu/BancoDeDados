CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) not null,
    indicacao varchar(255),
    primary key(id)
    );

INSERT INTO tb_categorias(tipo, indicacao) values ("Analgésico", "Alívio da dor");
INSERT INTO tb_categorias(tipo, indicacao) values ("Antialérgico", "Alívio de alergias");
INSERT INTO tb_categorias(tipo, indicacao) values ("Antibióticos", "Tratar infecções bacterianas");
INSERT INTO tb_categorias(tipo) values ("Antiácidos");
INSERT INTO tb_categorias(tipo) values ("Antieméticos");
    
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco >= 50.00;
SELECT * FROM tb_produtos WHERE preco between 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT nome, preco, quantidade, forma, tipo, indicacao FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo = "Analgésico";
    
