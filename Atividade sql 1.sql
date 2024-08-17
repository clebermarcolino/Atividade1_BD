-- Usei para fazer a atividade o MYSQL
create database Clinica; -- questão 1

-- questão 2

use Clinica;

create table Paciente(
	codP int not null auto_increment,
    nome varchar(80) not null,
    cpf char(11) not null,
    sexo char(1) not null,
    idade int,
    convenio varchar(50) default 'Particular',
    primary key(codP),
    unique (cpf),
    check(sexo in ('M','F')),
    check (idade >= 0)
);

create table Medicos(
	codM int not null auto_increment,
    nome varchar(80) not null,
	especialidade varchar(100),
	turno varchar(15) not null,
	salario numeric(10, 2),
	primary key(codM),
    check(turno in ('Manhã', 'Tarde', 'Noite'))
);

CREATE TABLE Consultas (
    paciente INT NOT NULL, 
    medico INT NOT NULL, 
    data DATE NOT NULL, 
    diagnostico TEXT, 
    preco NUMERIC(10, 2), 
    PRIMARY KEY (paciente, medico, data), 
    FOREIGN KEY (paciente) REFERENCES Paciente(codP), 
    FOREIGN KEY (medico) REFERENCES Medicos(codM) 
);
-- Questão 3

INSERT INTO Paciente (codP, nome, cpf, sexo, idade, convenio) VALUES
(1, 'Ana Silva', '12345678901', 'F', 30, 'Particular'),
(2, 'João Santos', '23456789012', 'M', 45, 'Unimed'),
(3, 'Maria Oliveira', '34567890123', 'F', 28, 'Bradesco Saúde');

INSERT INTO Medicos (codM, nome, especialidade, turno, salario) VALUES
(1, 'Dr. Carlos Almeida', 'Cardiologista', 'Manhã', 15000.00),
(2, 'Dra. Fernanda Costa', 'Ortopedista', 'Tarde', 12000.00),
(3, 'Dr. Ricardo Lima', 'Pediatra', 'Noite', 11000.00);

INSERT INTO Consultas (paciente, medico, data, diagnostico, preco) VALUES
(1, 1, '2024-08-15', 'Hipertensão', 200.00),
(2, 2, '2024-08-16', 'Fratura de braço', 250.00),
(3, 3, '2024-08-17', 'Consulta de rotina', 180.00);

-- Questão 4

SELECT * FROM Paciente;
SELECT nome, idade FROM Paciente;
SELECT * FROM Medicos;
SELECT * FROM Consultas WHERE data = '2024-08-15';

-- Questão 5

SET SQL_SAFE_UPDATES = 0;
UPDATE Medicos
SET salario = salario * 2
WHERE especialidade = 'Pediatra';
SET SQL_SAFE_UPDATES = 1;

-- Questão 6

SET SQL_SAFE_UPDATES = 0;
UPDATE Consultas
SET preco = 320.45;
SET SQL_SAFE_UPDATES = 1;

-- Questão 7

SET SQL_SAFE_UPDATES = 0;
delete from medicos
where salario < 1500.00;
SET SQL_SAFE_UPDATES = 1;

-- Questão 8

SET SQL_SAFE_UPDATES = 0;
delete from consultas
where preco < 150.00;
SET SQL_SAFE_UPDATES = 1;

-- Questão 9

alter table Consultas
add column horario time;

-- Questão 10

alter table Consultas
drop column diagnostico;

-- Questão 11

drop table consultas;

-- Questão 12 

drop database clinica;




     






