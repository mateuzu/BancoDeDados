CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    setor varchar(255) not null,
    nome_funcionario varchar(255) not null,
    cargo varchar(255) not null,
    salario decimal(8,2) not null,
    horas_diarias time not null,
    primary key (id)
    );
    
INSERT INTO tb_colaboradores (setor, nome_funcionario, cargo, salario, horas_diarias)
values ("Financeiro", "Ana Fulano", "Analista financeiro", 3200.00, '8:00:00');
INSERT INTO tb_colaboradores (setor, nome_funcionario, cargo, salario, horas_diarias)
values ("Tecnologia", "Maria Ciclano", "Analista de Suporte JR", 1800.00, '7:30:00');
INSERT INTO tb_colaboradores (setor, nome_funcionario, cargo, salario, horas_diarias)
values ("RH", "Joana Betano", "Recrutadora", 2500.00, '8:20:00');
INSERT INTO tb_colaboradores (setor, nome_funcionario, cargo, salario, horas_diarias)
values ("Marketing", "Rodrigo Fulano", "Analista de Markeging", 3574.00, '9:00:00');
INSERT INTO tb_colaboradores (setor, nome_funcionario, cargo, salario, horas_diarias)
values ("Tecnologia", "Mateus Ferreira", "Desenvolvedor Full Stack JR", 2800.00, '7:50:00');

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 3;