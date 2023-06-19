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


SELECT * from tb_personagens;
SELECT * from tb_personagens WHERE poder_ataque > 2000;
SELECT * from tb_personagens WHERE poder_defesa between 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe = "Viking";

