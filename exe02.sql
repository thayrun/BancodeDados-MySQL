USE db_atividades_mysql;

create table tb_exe02(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255),
preco DECIMAL(8,2) not null,
estoque int,
PRIMARY KEY (id)
);

SELECT * FROM tb_exe02;

insert into tb_exe02(nome, descricao, preco, estoque)
values("Smartphone Norotolla", "Prepare-se para a próxima geração de tecnologia", 1519.05, 50),
("Headphone Gamer", "Sem fio com cancelamento de ruído", 250.00, 150),
("Microfone Gamer", "QuadCast S Podcast, Antivibração", 799.99, 279),
("Console PlayStation 5", "Console Sony Playstation 5, Edição Digital", 3799.00, 25),
("Console Xbox Series S", "O Xbox Series S, nosso Xbox menor e totalmente digital", 2149.99, 38),
("Resident Evil 4 (Remake)", "Jogo para PS5", 239.99, 100),
("Nitro 5", "Com Ryzen 7 / GTX 1650", 5559.9, 9),
("Teclado Gamer", "Estrutura em alumínio durável", 189.99, 71);

SELECT * FROM tb_exe02;

select * from tb_exe02 where preco > 500.00;
select * from tb_exe02 where preco < 500.00;

update tb_exe02 set preco = 199.99 where id = 6;

select * from tb_exe02;

