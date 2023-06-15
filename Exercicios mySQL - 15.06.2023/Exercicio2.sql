CREATE database db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nome_produto varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    avaliacao decimal(2,1) not null,
    marca_produto varchar(255) not null,
    primary key (id)
    );

INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Camiseta Corinthians 21/22", 40, 159.99, 4.0, "Nike");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Camiseta Manchester City 21/22", 20, 229.99, 4.9, "Puma");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Camiseta Retrô Barcelona 01/02", 5, 199.99, 5.0, "Nike");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Regata Lakers LeBron", 5, 519.99, 4.4, "Nike");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Camiseta Liverpool 18/19 ", 100, 99.99, 4.6, "New Balance");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Tênis Adidas Classic", 30, 189.99, 4.6, "Adidas");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Tênis Oakley Flack Jack", 110, 359.99, 4.1, "Oakley");
INSERT INTO tb_produtos (nome_produto, quantidade, preco, avaliacao, marca_produto)
values ("Tênis Air Jordan MID", 20, 1099.99, 5.0, "Nike");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 219.99 WHERE id = 5;
    