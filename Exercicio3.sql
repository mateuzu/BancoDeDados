CREATE DATABASE db_estudante;
USE db_estudante;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
	nome_aluno varchar(255) not null,
    idade int not null,
    serie varchar(255) not null,
    media_final decimal(3,1) not null,
    situacao varchar(255) not null,
	primary key (id)
);

INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Roni", 15, "1° Ano EM", 5.0, "Em recuperação");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Yuri Alberto", 17, "3° Ano EM", 3.0, "Reprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Matheus Bidu", 14, "9° Ano EF", 10.0, "Aprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Vanderlei Luxemburgo", 19, "3° Ano EM", 3.0, "Reprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Cássio Ramos", 16, "2° Ano EM", 7.0, "Aprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Fagner Lemos", 13, "8° Ano EF", 4.0, "Reprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Renato Augusto", 20, "3° Ano EM", 10.0, "Aprovado");
INSERT INTO tb_alunos(nome_aluno, idade, serie, media_final, situacao)
values("Roger Guedes", 17, "3° Ano EM", 7.0, "Aprovado");

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE media_final >= 7;
SELECT * FROM tb_alunos WHERE media_final < 7;

UPDATE tb_alunos SET idade = 18 WHERE id = 6;
    