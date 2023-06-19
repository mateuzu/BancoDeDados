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
