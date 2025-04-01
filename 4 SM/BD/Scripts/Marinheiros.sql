create database marinheiros;

create table if not exists Marinheiro(
idMarinheiro int primary key,
nomeMarinheiro varchar(45),
avaliacao varchar(45),
idade int
);

create table if not exists Barcos(
idBarcos int primary key,
nomeBarco varchar(45),
cor varchar(45)
);

create table if not exists Reservas(
barcos_IdBarcos int,
marinheiro_idMarinheiro int,
dataReserva date,
foreign key (barcos_idBarcos) references Barcos(idBarcos),
foreign key(marinheiro_idMarinheiro) references Marinheiro(idMarinheiro)
);

alter table Barcos add column qtde_passageiros int;

alter table Barcos add column nome varchar(45);

alter table Marinheiro 
add column nome varchar(45),
add column telefone int;

insert into Barcos (idBarcos, nome , cor, qtde_passageiros) values 
(101, 'Interlake', 'azul', 5),
(102, 'Interlake', 'vermelho', 10),
(103, 'Clipper', 'verde', 13),
(104, 'Marine', 'vermelho', 4);


insert into  Marinheiro (idMarinheiro, nome, avaliacao, idade, telefone) values 
(22, 'Dustin', 'ótimo', 45, '994489221'),
(29, 'Brutus', 'ótimo', 33, '992209093'),
(31, 'Lubber', 'bom', 55, '981222290'),
(32, 'Andy', 'bom', 25, '988667373'),
(58, 'Rusty', 'ótimo', 35, '991090202'),
(64, 'Horatio', 'ótimo', 35, '981001023'),
(71, 'Zorba', 'ótimo', 16, '999215490'),
(74, 'Horatio', 'bom', 35, '991092234'),
(85, 'Art', 'ótimo', 25, '988664737'),
(95, 'Bob', 'ótimo', 63, '982334432');


insert into Reservas (marinheiro_idMarinheiro, barcos_idBarcos, dataReserva) values 
(22, 101, '1998-10-09'),
(22, 102, '1998-10-10'),
(22, 103, '1998-08-10'),
(22, 104, '1998-07-10'),
(31, 102, '1998-10-11'),
(31, 103, '1998-11-06'),
(31, 104, '1998-11-12'),
(64, 101, '1998-05-09'),
(64, 102, '1998-05-09'),
(74, 103, '1998-06-09');


alter table Barcos drop column nomeBarco;

alter table Marinheiro drop column nomeMarinheiro;

update marinheiro 
set nome = 'Fred' where idMarinheiro = '71';


update marinheiro 
set avaliacao = 'medio' where nome = 'Bob' ;

update barcos 
set cor = 'amarelo' where nome = 'Marine';