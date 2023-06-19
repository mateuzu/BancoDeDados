USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    forma varchar(255) not null,
    preco decimal(5,2) not null,
    quantidade int,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) REFERENCES tb_categorias(id)
    );

INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Ibuprofeno", "Comprimido", 4.00, 50, 1);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Loratadina", "Comprimido", 8.00, 30, 2);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Amoxicilina", "Gotas", 17.00, 42, 3);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Pantoprazol", "Comprimido", 18.00, 15, 4);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Dramin", "Gotas", 20.00, 10, 5);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Buscopan", "Gotas", 15.00, 22, 1);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Penicilina", "Comprimido", 50.00, 10, 3);
INSERT INTO tb_produtos(nome, forma, preco, quantidade, categoria_id)
values("Fexofenadina", "Comprimido", 55.00, 80, 2);



