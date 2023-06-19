CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
	id bigint auto_increment,
    descricao varchar(255),
    tem_semente varchar(10),
    primary key(id)
    );

INSERT INTO tb_categorias (descricao, tem_semente) values ("Fruta", "Não");
INSERT INTO tb_categorias (descricao, tem_semente) values ("Fruta", "Sim");
INSERT INTO tb_categorias (descricao, tem_semente) values ("Legume", "Não");
INSERT INTO tb_categorias (descricao, tem_semente) values ("Legume", "Sim");
INSERT INTO tb_categorias (descricao, tem_semente) values ("Verdura", "Não");
INSERT INTO tb_categorias (descricao, tem_semente) values ("Verdura", "Sim");

SELECT * from tb_produtos;
SELECT * from tb_produtos WHERE preco > 50.00;
SELECT * from tb_produtos WHERE preco between 50.00 and 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT descricao, nome, preco, quantidade, peso FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE descricao = "Fruta";
