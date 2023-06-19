create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal(7,2),
codigo_do_produto int,
primary key (id)
);

alter table tb_produtos add categoria_id bigint;
alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoria_id) references tb_categorias(id);

insert into tb_categorias(nome, descricao)values
("Medicamentos","Categoria de Medicamentos"),
("Higiene","Categoria de Higiene"),
("Guloseimas","Categoria de Guloseimas"),
("Cosméticos","Categoria de Cosméticos"),
("Suplementos","Categoria de Suplementos");

select * from tb_categorias;

insert into tb_produtos(nome, valor, codigo_do_produto, categoria_id)values
("Dorflex", 12.50, 1000000, 1),
("Balas Fini", 15.70, 3000000, 3),
("Shampoo", 17.90, 4000000, 4),
("Whey Protein", 55.90, 5000000, 5),
("Escova de Dentes", 8.50, 2000000, 2),
("Creme de Pentear", 20.99, 4000001, 4),
("Engov Comp", 6.24, 1000001, 1),
("Bala Halls", 2.50, 3000001, 3);

select * from tb_produtos;
select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 5.00 and 60.00;
select * from tb_produtos where nome like "%C%";
select prod.*, categ.nome as tb_categorias from tb_produtos prod inner join tb_categorias categ on prod.categoria_id = categ.id;
select prod.*, categ.nome as tb_categorias from tb_produtos prod inner join tb_categorias categ on prod.categoria_id = categ.id where categ.nome = "Medicamentos";


