CREATE DATABASE biliotecaDB;

USE bibliotecaDB;

CREATE TABLE autor (
idAutor int primary key auto_increment,
nome varchar(100),
dataNascimento date
);

CREATE TABLE livro (
idLivro int primary key auto_increment,
nome varchar(100),
dataPublicacao date,
edicao int,
preco decimal(5,2),
idAutor int,
FOREIGN KEY (idAutor)
REFERENCES autor (idAutor)
);

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar(100),
dataNascimento date,
cpf varchar(11)
);

CREATE TABLE emprestimo (
idEmprestimo int primary key auto_increment,
dataEmprestimo date,
idUsuario int,
idLivro int,
FOREIGN KEY (idUsuario)
REFERENCES usuario (idUsuario),
FOREIGN KEY (idLivro)
REFERENCES livro (idLivro)

);

CREATE TABLE devolucao (
idDevolucao int primary key auto_increment,
dataDevolucao date,
idUsuario int,
idLivro int,
idEmprestimo int,
FOREIGN KEY (idUsuario)
REFERENCES usuario (idUsuario),
FOREIGN KEY (idLivro)
REFERENCES livro (idLivro),
FOREIGN KEY (idEmprestimo)
REFERENCES emprestimo (idEmprestimo)
);
