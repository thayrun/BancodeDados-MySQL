CREATE DATABASE db_atividades_mysql;

USE db_atividades_mysql;

-- Exercicio de Serviço de RH.

CREATE TABLE tb_exe01(
id bigint auto_increment,
nome VARCHAR(255) not null,
cargo VARCHAR(255),
salario DECIMAL(10,2) not null,
departamento VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_exe01(nome, cargo, salario, departamento)
values("Roberto Tozzatti", "Desenvolvedor Backend SR", 13481.00, "Tecnologia");
INSERT INTO tb_exe01(nome, cargo, salario, departamento)
values("Thayron Nogueira", "Desenvolvedor FullStack Jr", 3500.00, "Tecnologia");
INSERT INTO tb_exe01(nome, cargo, salario, departamento)
values("Pedro Almeira", "Desenvolvedor Frontend PL",  5500.00, "Tecnologia");
INSERT INTO tb_exe01(nome, cargo, salario, departamento)
values("Suelly Oliveira", "Product Owner", 7227.00, "Tecnologia");
INSERT INTO tb_exe01(nome, cargo, salario, departamento)
values("Ana Santos", "Scrum Master", 9850.00, "Tecnologia");

SELECT * FROM tb_exe01;

SELECT * FROM tb_exe01 WHERE salario > 2000.00;
SELECT * FROM tb_exe01 WHERE salario < 2000.00;
UPDATE tb_exe01 SET salario = 4000.00 WHERE id = 2;

SELECT * FROM tb_exe01;
