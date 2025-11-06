-- 1 Lista de transações com apenas 1 ponto
SELECT IdTransacao, QtdePontos FROM transacoes 
WHERE QtdePontos = 1

-- 2 Lista de pedidos realizados no fim de semana

SELECT IdTransacao, DtCriacao, 
        strftime('%w',date(substr(DtCriacao,1,10))) AS diaSemana

FROM transacoes 

WHERE diaSemana in ('6','0')

-- 3 Lista de clientes com 0 (zero) pontos;

SELECT idCliente, qtdePontos FROM clientes WHERE qtdePontos = 0

-- 4 lista de clientes com 100 a 200 pontos, inclusive

SELECT idCliente, qtdePontos FROM clientes 
WHERE qtdePontos >= 100 and qtdePontos <= 200

-- 5 Lista de produtos com nome que começa com "Venda de"

SELECT IdProduto, DescNomeProduto FROM produtos
WHERE DescNomeProduto like 'Venda de%'

-- 6 Lista de produtos com nome que termina com "Lover"

SELECT IdProduto, DescNomeProduto FROM produtos
WHERE DescNomeProduto like '%Lover'

-- 7 Lista de produtos que são "chapéu"

SELECT * FROM produtos
WHERE DescNomeProduto like '%Chapéu%'

-- 8 Lista de transações com o produto "Resgatar Ponei

SELECT * FROM transacao_produto
WHERE IdProduto = 15


