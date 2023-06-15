USE db_atividades_mysql;


-- Exercicio dos Alunos.

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome VARCHAR(255) not null,
idade INT,
nota DECIMAL(4,2) not null,
turma VARCHAR(255) not null,
PRIMARY KEY (id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome, idade, nota, turma) VALUES
("Alice Silveira", 15, 8.0, "TurmaA"),
("Rodrigo Valerio", 17, 6.5, "TurmaB"),
("Camila Costa", 16, 5.5, "TurmaA"),
("Pedro Almeida", 16, 7.2, "TurmaC"),
("João Carlos", 15, 9.5, "TurmaB"),
("Mariana Fernandes", 17, 6.9, "TurmaA"),
("Eduardo Costa", 15, 9.0, "TurmaC"),
("Lucas Santos", 16, 8.9, "TurmaB");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos where nota > 7.0;
SELECT * FROM tb_alunos where nota < 7.0;

UPDATE tb_alunos SET nota = 7.5 WHERE id = 3;

SELECT * FROM tb_alunos;
