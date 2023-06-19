CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id bigint auto_increment,
    classe varchar(255) not null,
    arma varchar(255),
    primary key (id)
    );
    
INSERT INTO tb_classes (classe) values ("Desarmado");
INSERT INTO tb_classes (classe) values ("Mago");
INSERT INTO tb_classes (classe, arma) values ("Viking", "Martelo");
INSERT INTO tb_classes (classe, arma) values ("Samurai", "Espada");
INSERT INTO tb_classes (classe, arma) values ("Arqueiro", "Arco e Flecha");

CREATE TABLE tb_personagens (
	id bigint auto_increment,
    nome varchar(255) not null,
    nivel int not null,
    poder_ataque bigint not null,
    poder_defesa bigint not null,
    classe_id bigint,
    primary key (id),
	foreign key (classe_id) REFERENCES tb_classes(id)
    );
    
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Mateus", 1, 50, 50, 1);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Harry", 75, 10500, 7000, 2);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Ragnar", 25, 1700, 1200, 3);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Suzuki", 100, 17000, 14000, 4);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Loki", 10, 600, 278, 2);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Freya", 65, 9500, 7000, 3);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Nakamura", 5, 400, 200, 4);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
values ("Iniciante", 1, 50, 50, 1);

SELECT * from tb_personagens;
SELECT * from tb_personagens WHERE poder_ataque > 2000;
SELECT * from tb_personagens WHERE poder_defesa between 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe = "Viking";

