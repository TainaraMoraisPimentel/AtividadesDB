CREATE DATABASE lojaEletronicos;

USE lojaeletronicos;

CREATE TABLE produtos(
produtoId int primary key auto_increment,
nomeProduto varchar(30),
preco decimal (7,2),
quantidadeEstoque int
);

INSERT INTO produtos (produtoiD, nomeProduto, preco, quantidadeEstoque) VALUES (1, "smartphone", 799.99, 20);
INSERT INTO produtos (produtoiD, nomeProduto, preco, quantidadeEstoque) VALUES (2, "tablet", 349.99, 10);
INSERT INTO produtos (produtoiD, nomeProduto, preco, quantidadeEstoque) VALUES (3, "fone de ouvido", 49.99, 50);

UPDATE produtos
SET quantidadeEstoque = 25, preco = 849.99 
WHERE produtoId = 1

DELETE FROM produtos WHERE produtoId = 2 AND quantidadeEstoque = quantidadeEstoque - 5;
DELETE FROM produtos WHERE produtoId = 3 AND quantidadeEstoque = quantidadeEstoque - 10;