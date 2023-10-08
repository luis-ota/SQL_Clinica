CREATE DATABASE Clinica;
USE Clinica;

CREATE TABLE Medico(
	Id varchar (36) primary key,
    Crm varchar (20),
    Nome varchar (100),
    Salario int,
    Atuacao varchar(50)
    );

CREATE TABLE Paciente(
	Id varchar (36) primary key,
    Rg varchar (20),
    Cpf char (11),
    DataNascimeto DATE
);

CREATE TABLE EnderecoPaciente(
	IdPaciente varchar (36) primary key,
    Cep char(8),
    Logradouro varchar (100),
    Numero int,
    Bairro varchar (100),
    Cidade varchar (100),
    Estado char (2),
	foreign key (IdPaciente) references Paciente(Id)
    );

CREATE TABLE TelefonePaciente(
	IdPaciente varchar (36) primary key,
    Ddi char (3),
    Ddd varchar (3),
    Numero varchar (20),
	foreign key (IdPaciente) references Paciente(Id)
);

CREATE TABLE Quarto(
	Id varchar (36) primary key,
	Numero int,
    Andar int
);

CREATE TABLE Internacao(
	Id varchar (36) primary key,
    IdQuarto varchar (36),
    IdMedicoResponsavel varchar (36),
    IdPaciente varchar (36),
    DataInternacao DATETIME,
	foreign key (IdMedicoResponsavel) references Medico(Id),
	foreign key (IdPaciente) references Paciente(Id),
	foreign key (IdQuarto) references Quarto(Id)
);

CREATE TABLE MedicoParticipanteInternacao(
	IdMedico varchar (36),
    IdInternacao varchar (36),
    foreign key (IdMedico) references Medico(Id),
	foreign key (IdInternacao) references Internacao(Id),
	primary key (IdMedico, IdInternacao)
);

INSERT INTO Medico values("6d72f07c-d840-47d0-9f8b-3105b2519ae1", "CRM 123456/PR", "Luis Rafael", 15000, "Neurocirurgiao");
INSERT INTO Paciente values("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "0000000000", "00000000000", "2000-12-25");
INSERT INTO EnderecoPaciente values("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "00000000", "Batatinha", 13, "Futebol", "Pais do", "NJ");
INSERT INTO TelefonePaciente values("6d72f07c-d840-47d0-9f8b-3105b2519ae4", "055", "041", "2020000000");
INSERT INTO Quarto values("6d72f07c-d840-47d0-9f8b-3105b2519ae2", 2, 4);
INSERT INTO Internacao values("6d72f07c-d840-47d0-9f8b-3105b2519ae3", "6d72f07c-d840-47d0-9f8b-3105b2519ae2", "6d72f07c-d840-47d0-9f8b-3105b2519ae1", "6d72f07c-d840-47d0-9f8b-3105b2519ae4", "2023-10-02");
INSERT INTO MedicoParticipanteInternacao values("6d72f07c-d840-47d0-9f8b-3105b2519ae1", "6d72f07c-d840-47d0-9f8b-3105b2519ae3");
