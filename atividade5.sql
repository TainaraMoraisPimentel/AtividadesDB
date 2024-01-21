-- inserção de registros na tabela, para cada autor 5 livros. 

INSERT INTO autores (autor_id, nome, nacionalidade) VALUES
(1, 'J.R.R. Tolkien', 'Inglaterra'),
(2, 'George R.R. Martin', 'Estados Unidos'),
(3, 'J.K. Rowling', 'Reino Unido');

INSERT INTO livros (titulo, autor_id, ano_lancamento) VALUES
('O Senhor dos Anéis', 1, 1954),
('O Hobbit', 1, 1937),
('O Silmarillion', 1, 1977),
('A natureza da terra média', 1, 2021),
('Os filhos de hurin', 1, 2007),
('A Fúria dos Reis', 2, 1998)
('A guerra dos tronos', 2, 1996),
('A tormenta de espadas', 2, 2000),
('O festim dos corvos', 2, 2005),
('A dança dos dragões', 2, 2008),
('Os contos de Beedle, o bardo', 3, 2008),
('O chamado do Cuco', 3, 2013),
('The casual vacancy', 3, 2012),
('O coração de Nanquim', 3, 2023),
('Harry Potter e a pedra filosofal', 3, 2001),

-- consulta simples para listar todos os autores e seus livros associados.

SELECT
  autores.nome AS nome_autor,
  livros.titulo AS titulo_livro,
FROM
  autores
INNER JOIN
  livros
ON
  autores.id = livros.autor_id;

-- consulta com inner join detalhada.

SELECT
  autores.nome AS nome_autor,
  livros.titulo AS titulo_livro,
  livros.ano_lancamento AS ano_lancamento
FROM
  autores
INNER JOIN
  livros
ON
  autores.id = livros.autor_id;

-- consulta com left join.

SELECT
  livros.id AS id_livro,
  livros.titulo AS titulo_livro,
  livros.ano_lancamento AS ano_lancamento,
  autores.nome AS nome_autor,
  autores.nacionalidade AS nacionalidade
FROM
  livros
LEFT JOIN
  autores
ON
  livros.autor_id = autores.id;


-- consulta que liste os autores e seus livros por nacionalidade especifica.

SELECT
  autores.nome AS nome_autor,
  livros.titulo AS titulo_livro,
  livros.ano_lancamento AS ano_lancamento
FROM
  autores
INNER JOIN
  livros
ON
  autores.id = livros.autor_id
WHERE
  autores.nacionalidade = 'Reino Unido';


-- consulta agregação de dados para contar quantos livros cada autor escreveu.

SELECT
  autores.nome AS nome_autor,
  COUNT(*) AS numero_de_livros
FROM
  autores
INNER JOIN
  livros
ON
  autores.id = livros.autor_id
GROUP BY
  autores.nome;
