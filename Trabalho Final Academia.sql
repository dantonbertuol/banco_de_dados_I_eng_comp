create database Academia;
use Academia;

SET SQL_SAFE_UPDATES=0;

create table Aluno(
idAluno int not null,
peso float,
altura float,
datNasc date,
telefone int,
endereco varchar (200),
nome varchar (100),
datMatr date,
primary key (idAluno));

create table Turma(
idTurma int not null,
nrAlunos int,
hrAula varchar(100),
durAula float,
dataInicial date,
dataFinal date,
primary key (idTurma));

create table Instrutor(
idInstrutor int not null,
rg int,
nome varchar (100),
telefone int,
dataNasc date,
primary key (idInstrutor));

create table Matricula(
idMatricula int not null,
idAluno int,
idTurma int,
ausencias varchar(300),
primary key (idMatricula),
foreign key (idAluno) references Aluno (idAluno));

create table AlunoMonitor (
idAlunoMonitor int not null,
idAluno int,
idTurma int,
primary key (idAlunoMonitor),
foreign key (idAluno) references Aluno (idAluno),
foreign key (idTurma) references Turma (idTurma));

create table Instrucao (
idInstrucao int not null,
idInstrutor int,
idTurma int,
primary key (idInstrucao),
foreign key (idInstrutor) references Instrutor (idInstrutor),
foreign key (idTurma) references Turma (idTurma));

create table TipoAtividade(
idTipoAtividade int not null,
idTurma int,
descricao varchar(500),
primary key (idTipoAtividade),
foreign key (idTurma) references Turma (idTurma));

insert into Aluno (idAluno, peso, altura, datNasc, telefone, endereco, nome, datMatr)
values (1, 69.5, 1.75, '1985-02-22', 99313250, 'Av. Roraima, 123', 'Alahu Akbar', '2015-03-30');

insert into Aluno (idAluno, peso, altura, datNasc, telefone, endereco, nome, datMatr)
values (2, 72.5, 1.65, '1990-02-22', 99313243, 'Av. Roraima, 165', 'Osvaldo Coelho', '2014-04-30');

insert into Aluno (idAluno, peso, altura, datNasc, telefone, endereco, nome, datMatr)
values (3, 73.5, 1.77, '1972-02-22', 99313242, 'Av. Roraima, 182', 'Mohammed Salah', '2014-08-30');

insert into Aluno (idAluno, peso, altura, datNasc, telefone, endereco, nome, datMatr)
values (4, 74.5, 1.80, '1988-02-22', 99313241, 'Av. Roraima, 300', 'Anderson Martins', '2014-11-30');

insert into Aluno (idAluno, peso, altura, datNasc, telefone, endereco, nome, datMatr)
values (5, 80.5, 1.92, '1997-02-22', 99313240, 'Av. Roraima, 200', 'Barack Obama', '2015-05-30');


insert into Turma (idTurma, nrAlunos, hrAula, durAula, dataInicial, dataFinal)
values (1, 20, 'Segunda-Feira das 14hrs às 16hrs', 2.0, '2015-01-12', '2016-01-12');

insert into Turma (idTurma, nrAlunos, hrAula, durAula, dataInicial, dataFinal)
values (2, 15, 'Segunda-Feira das 17hrs às 19hrs', 2.0, '2015-01-12', '2016-01-12');

insert into Turma (idTurma, nrAlunos, hrAula, durAula, dataInicial, dataFinal)
values (3, 20, 'Terça-Feira das 14hrs às 16hrs', 2.0, '2015-01-12', '2016-01-12');

insert into Turma (idTurma, nrAlunos, hrAula, durAula, dataInicial, dataFinal)
values (4, 18, 'Segunda-Feira das 17hrs às 19hrs', 2.0, '2015-01-12', '2016-01-12');

insert into Turma (idTurma, nrAlunos, hrAula, durAula, dataInicial, dataFinal)
values (5, 13, 'Quarta-Feira das 14hrs às 16hrs', 2.0, '2015-01-12', '2016-01-12');


insert into Instrutor (idInstrutor, rg, nome, telefone, dataNasc)
values (1, 928385274, 'Paulo Ostenta', 99345688, '1987-01-12');

insert into Instrutor (idInstrutor, rg, nome, telefone, dataNasc)
values (2, 928384239, 'Osvaldo Tedois', 99244678, '1992-04-12');

insert into Instrutor (idInstrutor, rg, nome, telefone, dataNasc)
values (3, 978484234, 'Altair Vanz', 99355778, '1987-08-12');

insert into Instrutor (idInstrutor, rg, nome, telefone, dataNasc)
values (4, 928384230, 'Pero Vaz', 99325978, '1967-12-12');

insert into Instrutor (idInstrutor, rg, nome, telefone, dataNasc)
values (5, 922484284, 'Olerico Ostro', 94445678, '1992-10-15');


insert into Matricula (idMatricula, idAluno, idTurma, ausencias)
values (1, 1, 1, '4');

insert into Matricula (idMatricula, idAluno, idTurma, ausencias)
values (2, 2, 2, '1');

insert into Matricula (idMatricula, idAluno, idTurma, ausencias)
values (3, 3, 3, '1');

insert into Matricula (idMatricula, idAluno, idTurma, ausencias)
values (4, 4, 4, '2');

insert into Matricula (idMatricula, idAluno, idTurma, ausencias)
values (5, 5, 5, '2');



insert into AlunoMonitor (idAlunoMonitor, idAluno, idTurma)
values (1, 1, 1);

insert into AlunoMonitor (idAlunoMonitor, idAluno, idTurma)
values (2, 2, 2);

insert into AlunoMonitor (idAlunoMonitor, idAluno, idTurma)
values (3, 3, 3);

insert into AlunoMonitor (idAlunoMonitor, idAluno, idTurma)
values (4, 4, 4);

insert into AlunoMonitor (idAlunoMonitor, idAluno, idTurma)
values (5, 5, 5);


insert into Instrucao (idInstrucao, idInstrutor, idTurma)
values (1, 1, 1);

insert into Instrucao (idInstrucao, idInstrutor, idTurma)
values (2, 2, 2);

insert into Instrucao (idInstrucao, idInstrutor, idTurma)
values (3, 3, 3);

insert into Instrucao (idInstrucao, idInstrutor, idTurma)
values (4, 4, 4);

insert into Instrucao (idInstrucao, idInstrutor, idTurma)
values (5, 5, 5);


insert into TipoAtividade (idTipoAtividade, idTurma, descricao)
values (1, 1, 'Aerobico');

insert into TipoAtividade (idTipoAtividade, idTurma, descricao)
values (2, 2, 'Jump');

insert into TipoAtividade (idTipoAtividade, idTurma, descricao)
values (3, 3, 'Musculação');

insert into TipoAtividade (idTipoAtividade, idTurma, descricao)
values (4, 4, 'Resistencia');

insert into TipoAtividade (idTipoAtividade, idTurma, descricao)
values (5, 5, 'Dança');

update Aluno
set Nome='Osvaldo Marin', Endereco='Av. Rio Grande, 172', altura=1.92
where idAluno=1;

update Instrutor
set Nome='Antonio Brando'
where idInstrutor=4;

update Turma
set nrAlunos=35, dataInicial='2014-02-03', dataFinal='2014-08-03'
where idTurma > 3;

update Aluno
set peso=82.5
where idAluno <= 3;

update Aluno
set Nome='José Bonifácio', Endereco='Av. Pato Branco, 172', altura=1.78
where idAluno=1 and nome='Alahu Akbar';

update Instrutor
set Nome='Felipe Antonio'
where idInstrutor=2 and telefone=99244678;

update Turma
set nrAlunos=42, dataInicial='2013-02-03', dataFinal='2014-02-03'
where idTurma = 2 or hrAula='Quarta-Feira das 14hrs às 16hrs';

update Aluno
set peso=82.5
where idAluno=3 or idAluno=5;

delete from Instrucao
where idInstrucao=3;

delete from AlunoMonitor
where idAluno <= 2;

delete from Turma
where nrAlunos=4 or dataInicial='2012-03-04';

delete from Matricula
where idMatricula=1 and ausencias='4';

delete from Matricula
where idMatricula=4 or ausencias='2';

#falta o comando 6 de delete e os comandos de seleção

#drop database academia;