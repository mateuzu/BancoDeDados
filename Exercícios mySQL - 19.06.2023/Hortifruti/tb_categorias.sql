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

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(5,2) not null,
    quantidade int,
    peso varchar(255) not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categorias(id)
    );
    
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Abacaxi", 5.00, 5, "600g UNI", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Laranja", 8.00, 32, "100g UNI", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Cenoura", 5.00, 12, "120g UNI", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Abóbora", 10.00, 20, "2.5 kg UNI", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Alface", 2.50, 31, "170 g UNI", 5);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Pepino", 4.50, 12, "200g UNI", 6);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Melancia", 17.00, 3, "11 kg UNI", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, peso, categoria_id)
values ("Kiwi", 9.00, 10, "75g UNI", 1);

SELECT * from tb_produtos;
SELECT * from tb_produtos WHERE preco > 50.00;
SELECT * from tb_produtos WHERE preco between 50.00 and 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT descricao, nome, preco, quantidade, peso FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE descricao = "Fruta";
