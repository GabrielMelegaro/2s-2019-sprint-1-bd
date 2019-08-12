create database T_OPflix

use T_OPflix

create table Permissao
(
	IdPermissao INT PRIMARY KEY IDENTITY
	,Tipo varchar(255) not null Unique
);
create table Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome varchar(255) not null
	,Email varchar(255) not null
	,Senha varchar(255) not null
	,IdPermissao INT FOREIGN KEY REFERENCES Permissao(IdPermissao)
);
create table Categoria 
(
	IdCategoria int primary key identity
	,Nome varchar(255) not null unique
);

create table Plataforma
(
	IdPlataforma int primary key identity
	,Nome varchar(255)
);
create table