create database academia;
use academia;

create table equipamento (
	idEquipamento int primary key auto_increment,
    nome varchar(80),
    valor decimal(7,2),
    tempoAcademia date,
    ultimaManutencao date
);

create table aluno (
	idAluno int primary key not null,
    nome varchar(50),
    tempoAcademia date,
    frequenciaSemana int /* 0 a 7 */
);


create table academias (
	idAcademia INT primary key auto_increment,
    nome varchar(80),
    mensalidade decimal(5,2),
    endereco VARCHAR(45),
    numero INT,
    equipamento_id int not null,
    aluno_id int not null,
    foreign key (equipamento_id) references equipamento(idEquipamento), /*fk mostraria quantidade de equipamentos na academia*/
    foreign key (aluno_id) references aluno(idAluno) 
);

insert into equipamento(nome, valor, tempoAcademia, ultimaManutencao)
values ('Supino Reto', 10000.00, '2018-08-15', '2024-03-10'),
	   ('Remada Curvada', 12050.00, '2019-04-25', '2024-03-01'),
	   ('Agachamento', 12500.00, '2016-12-18', '2024-03-02'),
	   ('Leg Press 45', 13400.00, '2017-07-14', '2024-01-19'),
	   ('Leg Press 90', 13400.00, '2019-12-27', '2023-12-14'),
	   ('Cruficixo reto', 11000.00, '2014-10-14', '2024-03-08'),
	   ('Pulley Frente', 10000.00, '2022-02-10', '2024-01-02'),
	   ('Pulley Costas', 9000.00, '2021-07-28', '2024-02-17'),
	   ('Panturrilha', 8500.00, '2020-12-11', '2023-08-14'),
	   ('Cadeira Extensora', 9500.00, '2018-07-10', '2023-04-11'),
	   ('Cadeira Flexora', 9500.00, '2023-02-17', '2024-01-05');
       

insert into aluno(idAluno, nome, tempoAcademia, frequenciaSemana)
values (1, 'Sérgio Barreto', '2022-04-12', 4),
	   (2, 'Gustavo Gomes', '2021-03-28', 3),
	   (3, 'Felipe Oliveira', '2019-10-05', 2),
	   (4, 'Elizabete Leão', '2022-04-10',  2),
	   (5, 'Manoel Victor', '2022-12-08',  5),
	   (6, 'Lucas da França', '2021-12-29', 6),
	   (7, 'Alexandre de Jesus', '2023-02-04', 2),
	   (8, 'Giulia Souza', '2024-01-02', 3),
	   (9, 'João Alves', '2023-11-05',  1),
	   (10, 'Arthur de Barros', '2024-02-04', 0),
	   (11, 'Camile Gama', '2023-10-10',  2);

insert into academia(nome, mensalidade, endereco, numero, equipamento_id, aluno_id)
values ('Academia da Leste', 100.00, 'Rua das Flores', 507, 49);


