-- parte 1 - seleciona toda a tabela transações.   
SELECT * FROM transacoes;

-- parte 2 - altera informação da tabela
ALTER TABLE transacoes,
  RENAME COLUMN id AS id_transacao;
  RENAME COLUMN codigo AS código_transacao;
  RENAME COLUMN valor AS valor_transacao;
  RENAME COLUMN usuario_id AS usuario_id_transacao;


-- parte 3 - filtra valores acima de R$ 100,00
SELECT * FROM transacao
WHERE valor_transacao > 100;

-- parte 4 - ordena em ordem decrescente
SELECT * FROM transacaoProduto
ORDER BY transacao_id DESC;

-- parte 5 - média, valor máximo, valor mínimo, total transações.
SELECT AVG(valor_transacao) AS media_transacao
FROM transacao;

SELECT MAX(valor_transacao) AS valor_maximo_transacao
FROM transacao;

SELECT MIN(valor_transacao) AS valor_minimo_transacao
FROM transacao;

SELECT COUNT(*) AS numero_total_transacao
FROM transacao;

-- parte 6 - total transação por produto.
SELECT produto, COUNT(*) AS total_transacao_produto
FROM transacao
GROUP BY produto;

AND AVG(valor) AS media_valor
FROM produto;

-- parte 7 - média valor das transações de cada produto por categoria 
SELECT
  categoria_id,
  COUNT(*) AS quantidade_total_vendida,
  SUM(valor) AS valor_total_vendido,
  SUM(valor) / COUNT(*) AS media_valor_por_transacao
FROM
  produto
GROUP BY
  categoria;
