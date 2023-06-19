use db_generation_game_online;


create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
tipo_atk varchar(255) not null,
PRIMARY KEY (id)
);

select * from tb_classes;
select * from tb_personagens;


insert into tb_classes(nome, tipo_atk)
value("Elite Knight", "Melee");
insert into tb_classes(nome, tipo_atk)
value("Royal Archer", "Distance");
insert into tb_classes(nome, tipo_atk)
value("Elder Druid", "Healing Magic");
insert into tb_classes(nome, tipo_atk)
value("Master Sorcerer", "Witch Magic");
insert into tb_classes(nome, tipo_atk)
value("Lord Vampiric", "Life Drain");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque int,
defesa int,
PRIMARY KEY (id)
);

insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Merlin", 5000, 500,  4);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Sunrise Bella", 1500, 100,  3);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Infestissu Diaabo", 2800, 2500,  1);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Lightwood", 2200, 800,  2);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Spear of Diamond", 1000, 200,  2);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Ethan Dustin", 2800, 2000,  1);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("McCasey Healing", 1000, 50,  3);
insert into tb_personagens (nome, ataque, defesa, classes_id)
value("Gandalf", 4000, 600,  4);

alter table tb_personagens add classes_id bigint;
alter table tb_personagens add constraint fk_personagens_categorias
FOREIGN KEY (classes_id) REFERENCES tb_classes (id);


select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome LIKE '%C%';
select p.*, c.nome as classes_nome, c.tipo_atk from tb_personagens p inner join tb_classes c on p.classes_id = c.id;
select p.*, c.nome as classes_nome, c.tipo_atk from tb_personagens p inner join tb_classes c ON p.classes_id = c.id where c.nome = 'Elite Knight';





